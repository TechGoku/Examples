#include <iostream>
#include "oxenmq/oxenmq.h"
#include "lokimq/connections.h"
#include <chrono>
#include<zmq.hpp>
using namespace oxenmq;
using namespace std;
using LMQ_ptr = std::shared_ptr<oxenmq::OxenMQ>;
string global2;
int main()
{
zmq::context_t context (1);
    zmq::socket_t socket (context, ZMQ_REP);
    socket.bind ("tcp://*:5555");

while (true) {
        zmq::message_t request;
        socket.recv (&request);
            std::cout << "Received request: [" << (char*) request.data() << "]" << std::endl;
        // std::cout << "Received Hello" << std::endl;
        zmq::message_t reply (100);
        memcpy ((void *) reply.data (),"global",100);
        cout<<global2<<"glob";
        socket.send (reply);
    
    
    
    using LMQ_ptr = std::shared_ptr<oxenmq::OxenMQ>;
    LMQ_ptr lmq = std::make_shared<oxenmq::OxenMQ>();
    lmq->add_category("example",AuthLevel::none);                  
    lmq->start();
        auto c = lmq->connect_remote("tcp://127.0.0.1:1234",
             [](ConnectionID conn){ std::cout << "Connected \n"; },
             [](ConnectionID conn, std::string_view f){ std::cout << "connect failed: \n"; }
             );

        // lmq->request(c, "example.diana", [](bool s, auto data) {
        lmq->request(c, (char*) request.data(), [](bool s, auto data) {
             std::cout << data[0] << std::endl;
             std::string str1;
             str1 = data[0];
             global2 = str1;
             std::cout<< str1 << "str on fire \n";
            if (s == 1 && data[0] == "200"){
                std::cout << data[1]<<std::endl;
                    }
            else
                std::cout << "Timeout version!";
        });
    std::this_thread::sleep_for(5s);
    }
    
return 0;

}

