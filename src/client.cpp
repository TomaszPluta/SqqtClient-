#include "ClientSocket.h"
#include "SocketException.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <unistd.h>



using namespace std;

int main (int argc, char* argv[]) {

	std::cout << "Client start" << std::endl;
	std::cout << "supported cmds:\n"<< "subscribe:LivingRoom\npublish:LivingRoom:HelloMsg\n"<<std::endl;

	string host = "localhost";
	int port = 1886;
	try{
		ClientSocket client_socket ( host, port );
		string reply;

		while (1){
			client_socket << argv[1];
			client_socket >> reply;
			std::cout << "Client got msg: " << reply <<std::endl;
		}

	} catch (...){
		std::cout<<"!EXCEPTION: can not connect!"<<endl;
	}

	std::cout << "Client end" << std::endl;
	return 0;
}
