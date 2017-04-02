#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <unistd.h>

#define NSEC_PER_MSEC    (1000000)  /* The number of nsecs per msec. */
#define NSEC_PER_SEC    (1000000000) /* The number of nsecs per sec. */
#define BUF_SIZE 1000
#define NMAX 10001
float Ta,T,Ti,No,H,Tref,Href,erro_t,erro_h,Na,Q,Ni,Nf;
char host1[]="localhost";
char port1[]="1234";
long tempo_T[NMAX];
long tempo_N[NMAX];


void error(const char *msg)
{
    perror(msg);
    exit(0);
}
void strfix (char *s, char *t) {
   int i;
   for (i = 0; t[i+3] != '\0'; ++i) 
   	s[i] = t[i+3];
   s[i] = '\0';
}
	
void armazena_valores(){
	FILE *pf;
	if((pf = fopen("TabelaValores.txt", "a")) == NULL) /* Abre arquivo binário para escrita */
        {
                  printf("Erro na abertura do arquivo");
                  exit(1);    
        }
	fprintf(pf,"----------------------------------Aquecedor de Água--------------------------------- \n");
        fprintf(pf,"Temperatura \t\t Nível \t\t\t Atuadores \t\t Sensores\n");
	fprintf(pf,"Tref = %.4f \t\t Href = %.4f \t\t Ni = %.4f \t\t No = %.4f \t\n",Tref,Href,Ni,No);
	fprintf(pf,"T = %.4f \t\t H = %.4f \t\t Nf = %.4f \t\t Ti = %.4f \t\n",T,H,Nf,Ti);
	fprintf(pf,"erro_t = %.4f \t erro_h = %.4f \t Na = %.4f \t\t Ta = %.4f \t\n",erro_t,erro_h,Na,Ta);
	fprintf(pf,"\t\t\t\t\t\t Q = %.4f \n",Q);
        fclose(pf);                                    /* Fecha o arquivo */

}
void armazena_tempos(){
	int i;
	FILE *pf;
	if((pf = fopen("TemposNivel.txt","a")) == NULL){ /* Abre arquivo binário para escrita */
		printf("Erro na abertura do arquivo");
		exit(1);	
	}
	//fprintf(pf, "Tempos de Resposta - Controlador Nivel \n");
	for(i=0;i<NMAX;i++) {
		fprintf(pf, "%ld\n",tempo_N[i]);
	}
	fclose(pf);
	if((pf = fopen("TemposTemperatura.txt","a")) == NULL){ /* Abre arquivo binário para escrita */
		printf("Erro na abertura do arquivo");
		exit(1);	
	}
	//fprintf(pf, "\nTempos de Resposta - Controlador Temperatura \n");
	for(i=0;i<NMAX;i++) {
		fprintf(pf, "%ld\n",tempo_T[i]);
	}
	fclose(pf);
}

float sensor(char *s){
	int socket_cliente;
	char buf[BUF_SIZE];
	char message[BUF_SIZE];
	ssize_t len;
	ssize_t nread;
	float msg;
	
	len = strlen(s)+1;
	socket_cliente = prepara_socket_cliente(host1, port1);
	write(socket_cliente, s, len);
	nread = read(socket_cliente, buf, BUF_SIZE);
	strfix(message, buf);
	msg=atof(message);
	bzero(buf,BUF_SIZE);
	close(socket_cliente);
	return msg;
}

void atuador(char *s, float val){
/** A atuação será realizada nas variáveis Q, Ni, Na e Nf.
*	“Q” fluxo de calor do elemento aquecedor [Joule/segundo]               //atuador("aq-5500");
*	“Ni” fluxo de água de entrada do recipiente [Kg/segundo]               //atuador("ani12.4");
*	“Na” fluxo de água aquecida a 80C de entrada controlada [Kg/segundo]   //atuador("ana5");
*	“Nf” fluxo de água de saída para esgoto controlada [Kg/segundo]        //atuador("anf12.4");
**/
	int socket_cliente;
	char buf[BUF_SIZE];
	char message[BUF_SIZE];
	ssize_t len;
	ssize_t nread;
	//float msg;
	char str[10];
   	char temp[10];
	int n;
	
	strcpy(str,s);
   	n=sprintf(temp,"%f",val);
	strcat(str,temp);

	len = strlen(str)+1;
	socket_cliente = prepara_socket_cliente(host1, port1);
	write(socket_cliente, str, len);
	nread = read(socket_cliente, buf, BUF_SIZE);
	bzero(buf,BUF_SIZE);
	close(socket_cliente);
}

void controle_nivel(){
	int kp;
	
	H=sensor("sh-0");
	erro_h=Href-H;
	if(erro_h<0){ // H>Href (precisa diminuir o nivel)
		Ni=0;
		kp=100;
		Nf=kp*erro_h*-1;
		if(Nf>100) Nf=100; // Condições de saturação
		else if(Nf<0) Nf =0;
	}
	else if(erro_h>0){ //  H<Href (precisa aumentar o nivel)
		Nf=0;
		kp=100;
		Ni=kp*erro_h;
		if(Ni>100) Ni=100; // Condições de saturação
		else if(Ni<0) Ni =0;
	}
	atuador("anf",Nf);
	atuador("ani",Ni);
	
}

void controle_temperatura(){
	long int kp_q;
	int kp_na, kp;
	
	T=sensor("st-0");


	erro_t=Tref-T;
	if(erro_t<0){ // T>Tref (precisa diminuir a temperatura)
		Na=0;
		Q=0;
	}
	else if(erro_t>0){ // T<Tref (precisa aumentar a temperatura)
		kp_q=50000;
		Q=kp_q*erro_t;
		if(Q>1000000) Q=1000000; // Condições de Saturação
		else if(Q<0) Q=0;	


		kp_na=20;
		Na=kp_na*erro_t;
		if(Na>10) Na=10; // Condições de Saturação
		else if(Na<0) Na=0;
		Nf+=Na;
	}
	atuador("anf",Nf);
	atuador("ana",Na);
	atuador("aq-",Q);

}

void atualiza_tela(){
/**
* "sta0" lê valor de Ta
* "st-0" lê valor de T
* "sti0" lê valor de Ti
* "sno0" lê valor de No
* "sh-0" lê valor de H 
**/
	float H;
	
	system("clear");
	printf("----------------------------------Aquecedor de Água--------------------------------- \n");
	Ta=sensor("sta0");
	T=sensor("st-0");
	Ti=sensor("sti0");
	No=sensor("sno0");
	H=sensor("sh-0");
	printf("Temperatura \t\t Nível \t\t\t Atuadores \t\t Sensores\n");
	printf("Tref = %.4f \t\t Href = %.4f \t\t Ni = %.4f \t\t No = %.4f \t\n",Tref,Href,Ni,No);
	printf("T = %.4f \t\t H = %.4f \t\t Nf = %.4f \t\t Ti = %.4f \t\n",T,H,Nf,Ti);
	printf("erro_t = %.4f \t erro_h = %.4f \t Na = %.4f \t\t Ta = %.4f \t\n",erro_t,erro_h,Na,Ta);
	printf("\t\t\t\t\t\t Q = %.4f \n",Q);
}

int prepara_socket_cliente(char *host, char *porta){ 
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
    if (s != 0) 
    {
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

long dif(struct timespec inicio, struct timespec fim){
	long temp;
	temp = (fim.tv_sec*NSEC_PER_SEC+fim.tv_nsec) - (inicio.tv_sec*NSEC_PER_SEC+inicio.tv_nsec);
	//temp = temp/NSEC_PER_MSEC;
	return temp;
}

int main()
{
	long aux=0;
	long it=0, in=0;
	long interval = 10000000; /* 10ms*/ // sensores
	long t_resposta;
        struct timespec t,tt,tn;
	clock_gettime(CLOCK_MONOTONIC, &t);
	/* start after one second */
        t.tv_sec++;
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
        while(it<NMAX) {
		clock_nanosleep(CLOCK_MONOTONIC, TIMER_ABSTIME, &t, NULL);
		clock_gettime(CLOCK_MONOTONIC, &t);
		if(aux%7==0 & in<NMAX){
			atuador("anf",0);
			controle_nivel(); //malha controle nivel
			clock_gettime(CLOCK_MONOTONIC, &tn);
			t_resposta = dif(t, tn);
			tempo_N[in] = t_resposta;
			in++;
			
		}
		if(aux%9==0 & it<NMAX){
			controle_temperatura(); //malha controle temperatura
			clock_gettime(CLOCK_MONOTONIC, &tt);
			t_resposta = dif(t, tt);
			tempo_T[it] = t_resposta;
			it++;
		
		}		
		if(aux%100==0){
			atualiza_tela();
		}

                t.tv_nsec += interval;
		while (t.tv_nsec >= NSEC_PER_SEC) {
                       t.tv_nsec -= NSEC_PER_SEC;
                       t.tv_sec++;	
                }
		aux++;
		
  	}
	armazena_tempos();
	exit(EXIT_SUCCESS);
}




