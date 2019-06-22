#include "ClientSocket.h"
#include "SocketException.h"
#include <iostream>
#include <string>
#include <cstdlib>

using namespace std;

int main (int argc, char* argv[]) {

  string host = "localhost";
  int port = 1886;

  try {
    ClientSocket client_socket ( host, port );
    string reply;

    try {
      client_socket << "subscribe:LivingRoom";
      client_socket >> reply;
    } catch ( SocketException& ) {}

    cout << "We received this response from the server:\n\"" << reply << "\"\n";;

  }  catch ( SocketException& e ) {
    cout << "Exception was caught:" << e.description() << endl;
  }

  return 0;
}
