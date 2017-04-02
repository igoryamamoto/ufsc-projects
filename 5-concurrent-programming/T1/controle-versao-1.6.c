#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <unistd.h>

#define BUF_SIZE 1000
float Ta,T,Ti,No,H,Tref,Href,erro_t,erro_h;
char host1[]="localhost";
char port1[]="1234";
void strfix (char *s, char *t) {
   int i;
   for (i = 0; t[i+3] != '\0'; ++i) 
      s[i] = t[i+3];
   s[i] = '\0';
}
	//atuador("ani12.4");
	//atuador("aq-5500");
	//atuador("ana5");
	//atuador("anf12.4");
/**A atuação será realizada nas variáveis Q, Ni, Na e Nf.
*	“Q” fluxo de calor do elemento aquecedor [Joule/segundo] 
*	“Ni” fluxo de água de entrada do recipiente [Kg/segundo] 
*	“Na” fluxo de água aquecida a 80C de entrada controlada [Kg/segundo] 
*	“Nf” fluxo de água de saída para esgoto controlada [Kg/segundo] 
**/

void armazena_valores(){
FILE *pf;
      if((pf = fopen("TabelaValores.txt", "a")) == NULL) /* Abre arquivo binário para escrita */
            {
                  printf("Erro na abertura do arquivo");
                  exit(1);    
            }
	fprintf(pf, "-----------Tempo atual =   -----------------\n");
        fprintf(pf, "\nTa = %f\t\t", Ta );
	fprintf(pf, "T = %f\t\t", T );
	fprintf(pf, "Ti = %f\t\t\n", Ti );
	fprintf(pf, "No = %f\t\t", No );
	fprintf(pf, "H = %f\t\t", H );
	fprintf(pf, "Tref = %f\t\t", Tref );	
	fprintf(pf, "Href = %f\n\n", Href );
        fclose(pf);                                    /* Fecha o arquivo */

}
float sensor(char *s){
	int socket_cliente;
	char buf[BUF_SIZE];
	char message[BUF_SIZE];
	ssize_t len;
	ssize_t nread;
	float msg;
	
	len = strlen(s) +1;
	socket_cliente = prepara_socket_cliente(host1,port1 );
	write(socket_cliente, s, len);
	nread = read(socket_cliente, buf, BUF_SIZE);
	strfix(message, buf);
	//printf("%s \n",message);
	msg=atof(message);
	//printf("%.4f \n",msg);
	return msg;
}
void atuador(char *s){
	int socket_cliente;
	char buf[BUF_SIZE];
	char message[BUF_SIZE];
	ssize_t len;
	ssize_t nread;
	float msg;
	
	len = strlen(s) +1;
	socket_cliente = prepara_socket_cliente(host1, port1);
	write(socket_cliente, s, len);
	nread = read(socket_cliente, buf, BUF_SIZE);
	//printf("%s \n",buf);
}
void controle_nivel(){
	float Nf,kp,Ni;
	char str[10];
   	char output[10];
	int n;
	
	H=sensor("sh-0");
	erro_h=Href-H;
	if(erro_h<0){
	kp=800;
	Nf=kp*erro_h*-1;
	Ni=0;
	}
	else if(erro_h>0){
	kp=800;
	Ni=kp*erro_h;
	Nf=0;
	}

	strcpy(str,"anf");
   	n=sprintf(output,"%f",Nf);
	strcat(str,output);
	atuador(str);

	strcpy(str,"ani");
   	n=sprintf(output,"%f",Ni);
	strcat(str,output);
	atuador(str);
	
}
void controle_temperatura(){
	float Na,kp,Q;
	char str[10];
   	char output[10];
	int n;
	
	T=sensor("st-0");
	H=sensor("sh-0");
	erro_t=Tref-T;
	erro_h=Href-H;
	if(erro_t<0){
	Na=0;
	Q=0;
	}
	else if(erro_t>0){
	if(erro_h>0){
	kp=800;
	Na=kp*erro_h;
	Q=0;
	}
	else{
	Na=0;
	Q=kp*erro_t;	
	}
	}

	strcpy(str,"ana");
   	n=sprintf(output,"%f",Na);
	strcat(str,output);
	atuador(str);

	strcpy(str,"aq-");
   	n=sprintf(output,"%f",Q);
	strcat(str,output);
	atuador(str);

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
	Ta=sensor("sta0");
	T=sensor("st-0");
	Ti=sensor("sti0");
	No=sensor("sno0");
	H=sensor("sh-0");
	printf("Ta = %.4f \t\t",Ta);
	printf("T = %.4f \t\t",T);
	printf("Ti = %.4f \n",Ti);
	printf("No = %.4f \t\t",No);
	printf("H = %.4f \n",H);

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
{
	int aux=0;
	int interval = 10000000; /* 10ms*/ // sensores
        struct timespec t;
	clock_gettime(CLOCK_MONOTONIC ,&t);
        t.tv_sec++;
        
	printf("\033[2J\033[1;1H");
	while(1){
	printf("\nInsira o valor de referencia para altura H : ");
	scanf ("%f",&Href);
		if(Href>3){
		printf("Por favor digite um valor entre 0.1 e 3.0");
		}
		else if(Href<0.1){
		printf("Por favor digite um valor entre 0.1 e 3.0");
		}
		else{
		break;
		}
	}
	printf("\nInsira o valor de referencia para temperatura T : ");
	scanf ("%f",&Tref);       
	atualiza_tela();
	//atuador("ani12.4");
	//atuador("aq-5500");
	//atuador("ana5");
	//atuador("anf12.4");
        while(1) {
		//cliente(4,argv);
		clock_nanosleep(CLOCK_MONOTONIC, TIMER_ABSTIME, &t, NULL);
		//printf("oi \n");
		if(aux%7==0){
		controle_nivel();
		//malha controle nivel
		}
		if(aux%9==0){
		//controle_temperatura();
		//malha controle temperatura
		}		
		if(aux%100==0){
		atualiza_tela();
		}
		if(aux%1000==0){
		armazena_valores();
		}
                t.tv_nsec += interval;
		
                while (t.tv_nsec >= NSEC_PER_SEC) {
                       t.tv_nsec -= NSEC_PER_SEC;
                        t.tv_sec++;
                }
		aux++;
		//exit(EXIT_SUCCESS);// para testes, programa nao infinito
  	 }
exit(EXIT_SUCCESS);
}




