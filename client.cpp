#include "ClientSocket.h"
#include "SocketException.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <unistd.h>
#include <future>

using namespace std;


void asyncCall(void){
    std::cout<<"client is running"<<std::endl;
}


int main (int argc, char* argv[]) {

	std::cout << "supported cmds:\n"<< "subscribe:xx\npublish:xx:yy\n"<<std::endl;
	std::cout << "Client start" << std::endl;
    
    future <void> greetings = std::async(std::launch::async, asyncCall);
    
	string host = "localhost";
	constexpr int port = 1886;
    

    
	try{
		ClientSocket client_socket ( host, port );

        if (argc>1){
            client_socket << argv[1];
        } else {
            client_socket << "subscribe:aa";
        }

        
        
        
        auto rec = [&]( )
        {
            while (1) {
                std::cout<<"from async labda"<<std::endl;
                string reply;
                client_socket >> reply;
                std::cout << "Client got msg: " << reply <<std::endl;
            }
        };
        std::thread tRec(rec, std::ref(client_socket));
        
        std::string userInput;
		do {
			std::cin>>userInput;
			client_socket << userInput;
			} while (userInput != "end");

   tRec.join();
	} catch (...){
		std::cout<<"connection lost."<<endl;
	}

 
	std::cout << "Client end" << std::endl;
	return 0;
}
