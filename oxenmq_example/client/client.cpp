#include<map>
#include<set>
#include"oxenmq/oxenmq.h"
#include"lokimq/connections.h"
#include "oxenmq/connections.h"
using namespace oxenmq;
int main()
{
    using LMQ_ptr = std::shared_ptr<oxenmq::OxenMQ>;
    LMQ_ptr lmq = std::make_shared<oxenmq::OxenMQ>();
    lmq->add_category("example",AuthLevel::none);                  
    lmq->start();

        auto c = lmq->connect_remote("tcp://127.0.0.1:1234",
             [](ConnectionID conn){ std::cout << "Connected \n"; },
             [](ConnectionID conn, std::string_view f){ std::cout << "connect failed: \n"; }
             );

        lmq->request(c, "example.diana", [](bool s, auto data) {
                 std::cout << data[0] << std::endl;
            if (s == 1 && data[0] == "200"){
                std::cout << data[1]<<std::endl;
                    }
            else
                std::cout << "Timeout fetching version!";
        });
    std::this_thread::sleep_for(5s);
}