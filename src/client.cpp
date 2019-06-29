#include "ClientSocket.h"
#include "SocketException.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <unistd.h>



using namespace std;

int main (int argc, char* argv[]) {

  std::cout << "Client start" << std::endl;

  string host = "localhost";
  int port = 1886;

    ClientSocket client_socket ( host, port );
    string reply;

 while (1){
      client_socket << "subscribe:LivingRoom";
      client_socket >> reply;
	  std::cout << "Client:" << reply <<std::endl;
      client_socket << "publish:LivingRoom:HelloMsg";
      client_socket >> reply;
	  std::cout << "Client:" << reply <<std::endl;

	  unsigned int microseconds = 5 * 1000 *1000;
	  usleep(microseconds);
 }


  std::cout << "Client end" << std::endl;
  return 0;
}
