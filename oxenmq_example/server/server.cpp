#include <iostream>
#include "oxenmq/oxenmq.h"
#include "lokimq/connections.h"
#include <chrono>
using namespace oxenmq;
using LMQ_ptr = std::shared_ptr<oxenmq::OxenMQ>;
int main()
{
    LMQ_ptr lmq = std::make_shared<oxenmq::OxenMQ>();
    lmq->add_category("example",Access{AuthLevel::none});
   
    lmq->add_request_command("example","diana",[&](Message& m){
        m.send_reply("hi from diana buy nft");
    });

    lmq->start();
    std::string zmqip = "tcp://127.0.0.1:1234";
   lmq->listen_plain(zmqip);

   while(1)
        {

        }
}