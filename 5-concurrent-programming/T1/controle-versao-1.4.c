#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <unistd.h>

#define BUF_SIZE 1000
void strfix (char *s, char *t) {
   int i;
   for (i = 0; t[i+3] != '\0'; ++i) 
      s[i] = t[i+3];
   s[i] = '\0';
}
/*
int sensor(char *s){
	int socket_cliente;
	char buf[BUF_SIZE];
	char message[BUF_SIZE];
	ssize_t nread;
	int msg;
	socket_cliente = prepara_socket_cliente("localhost", "1234");
	write(socket_cliente, s, BUF_SIZE);
	nread = read(socket_cliente, buf, BUF_SIZE);
	strfix(message, buf);
	printf("%s \n",message);
	msg=atoi(message);
	printf("%i \n",msg);
	return msg;
} 
* -----------Funcao japa, unica coisa que mudei foi implementar o len
* */
float sensor(char *s){
	int socket_cliente;
	char buf[BUF_SIZE];
	char message[BUF_SIZE];
	ssize_t len;
	ssize_t nread;
	float msg;
	
	len = strlen(s) + 1;
	socket_cliente = prepara_socket_cliente("localhost", "1234");
	write(socket_cliente, s, len);
	nread = read(socket_cliente, buf, BUF_SIZE);
	strfix(message, buf);
	//printf("%s \n",message);
	msg=atof(message);
	//printf("%.4f \n",msg);
	return msg;
}
void atualiza_tela(){
	/*"sta0" lê valor de Ta
"st-0" lê valor de T
"sti0" lê valor de Ti
"sno0" lê valor de No
"sh-0" lê valor de H */
	float H;
	printf("\033[2J\033[1;1H");
	/*H = sensor("sh-0");
	printf("%.4f \n",H);*/
	printf("--------------------Valores Aquecedor------------------------ \n");
	printf("Ta = %.4f \t\t",sensor("sta0"));
	printf("T = %.4f \t\t",sensor("st-0"));
	printf("Ti = %.4f \n",sensor("sti0"));
	printf("No = %.4f \t\t",sensor("sno0"));
	printf("H = %.4f \n",sensor("sh-0"));

}
int prepara_socket_cliente(char *host, char *porta)
{ 
    struct addrinfo hints;
    struct addrinfo *result, *rp;
    int sfd, s;

    /* Obtain address(es) matching host/port */

    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_family = AF_UNSPEC;    /* Allow IPv4 or IPv6 */
    hints.ai_socktype = SOCK_DGRAM; /* Datagram socket */
    hints.ai_flags = 0;
    hints.ai_protocol = 0;          /* Any protocol */

    s = getaddrinfo(host, porta, &hints, &result);
    if (s != 0) {
        fprintf(stderr, "getaddrinfo: %s\n", gai_strerror(s));
        exit(EXIT_FAILURE);
    }

    /* getaddrinfo() returns a list of address structures.
       Try each address until we successfully connect(2).
       If socket(2) (or connect(2)) fails, we (close the socket
       and) try the next address. */

	for( rp = result; rp != NULL; rp = rp->ai_next) {
		sfd = socket(rp->ai_family, rp->ai_socktype, rp->ai_protocol);
        if (sfd == -1)
            continue;

        if (connect(sfd, rp->ai_addr, rp->ai_addrlen) != -1)
			break;                  /* Success */

        close(sfd);
    }

    if (rp == NULL) {               /* No address succeeded */
        fprintf(stderr, "Could not connect\n");
        exit(EXIT_FAILURE);
    }

    freeaddrinfo(result);           /* No longer needed */

	return sfd;
}
void cliente(int argc, char* argv[]){
	int socket_cliente;
	int j;
	ssize_t len;
	ssize_t nread;
	char buf[BUF_SIZE];
	char message[BUF_SIZE];
if (argc < 3) {
		fprintf(stderr, "Usage: %s host port msg...\n", argv[0]);
		exit(EXIT_FAILURE);
	    }

		socket_cliente = prepara_socket_cliente(argv[1], argv[2]);


	    /* Send remaining command−line arguments as separate
	       datagrams, and read responses from server */

	    for (j = 3; j < argc; j++) {
		len = strlen(argv[j]) + 1;
		        /* +1 for terminating null byte */

		if (len + 1 > BUF_SIZE) {
		    fprintf(stderr,"Ignoring long message in argument %d\n", j);
		    continue;
		}


			/* Send a message */
		if (write(socket_cliente, argv[j], len) != len) {
		    fprintf(stderr, "partial/failed write\n");
		    exit(EXIT_FAILURE);
		}


			/* Receive a message */
		nread = read(socket_cliente, buf, BUF_SIZE);
		if (nread == -1) {
				perror("read");
		    exit(EXIT_FAILURE);
		}
		strfix(message,buf);
		printf("Received %ld bytes: %s\n", (long) nread, message);
	    }

}

#define NSEC_PER_SEC    (1000000000) /* The number of nsecs per sec. */

int main()
{		char* argv[4];
		argv[0]= "./cliente";
		argv[1]="localhost";
		argv[2]="1234";
		argv[3]="st-0";
        struct timespec tim, tim2;
        tim.tv_sec = 0;
		tim.tv_nsec = 10000000;//10 ms
        int aux=0;
        int Ta,T,Ti,No,H; // sensores
        
        while(1) {
		//printf("oi \n");
		nanosleep(&tim , &tim2);
		if(aux%7==0){
				
		//malha controle nivel
}
		if(aux%9==0){
		//malha controle temperatura
}		
		if(aux%100==0){
		atualiza_tela();
		//cliente(4,argv);
		//T = sensor("st-0");	
		//atualização de valores na tela
}

		aux++;
		//exit(EXIT_SUCCESS);// para testes, programa nao infinito
   }
exit(EXIT_SUCCESS);
}



