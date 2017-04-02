#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <unistd.h>
#include <pthread.h>
#include "prepara_socket.h"
#define NSEC_PER_SEC    (1000000000) /* The number of nsecs per sec. */
#define BUF_SIZE 1000
#define NMAX 1000
#define BUFSIZE 10

float Ta,T,Ti,No,H,Tref,Href,erro_t,erro_h,Na,Q,Ni,Nf;
char host1[]="localhost";
char port1[]="1234";
double buffer1_T[BUFSIZE];
double buffer2_T[BUFSIZE];
double buffer1_N[BUFSIZE];
double buffer2_N[BUFSIZE];
int bufferFullN = 0;
int bufferUnloadN;
int bufferFullT = 0;
int bufferUnloadT;

pthread_t cntN, cntT, tela, saveN, saveT, saveTela, ref,insBufferT,insBufferN;
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutexCtr = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t wait_bufferN = PTHREAD_COND_INITIALIZER;
pthread_cond_t wait_bufferT = PTHREAD_COND_INITIALIZER;

void error(const char *msg){
    perror(msg);
    exit(0);
}
void strfix (char *s, char *t) {
   int i;
   for (i = 0; t[i+3] != '\0'; ++i) 
   	s[i] = t[i+3];
   s[i] = '\0';
}
	
void armazena_tela(){
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

float sensor(char *s){
	pthread_mutex_lock(&mutex);
	int socket_cliente;
	char buf[BUF_SIZE];
	char message[BUF_SIZE];
	ssize_t len;
	ssize_t nread;
	float msg;
	
	len = strlen(s)+1;
	socket_cliente = prepara_socket(host1, port1);
	write(socket_cliente, s, len);
	nread = read(socket_cliente, buf, BUF_SIZE);
	strfix(message, buf);
	msg=atof(message);
	bzero(buf,BUF_SIZE);
	close(socket_cliente);
	pthread_mutex_unlock(&mutex);
	return msg;
}

void atuador(char *s, float val){
/** A atuação será realizada nas variáveis Q, Ni, Na e Nf.
*	“Q” fluxo de calor do elemento aquecedor [Joule/segundo]               //atuador("aq-5500");
*	“Ni” fluxo de água de entrada do recipiente [Kg/segundo]               //atuador("ani12.4");
*	“Na” fluxo de água aquecida a 80C de entrada controlada [Kg/segundo]   //atuador("ana5");
*	“Nf” fluxo de água de saída para esgoto controlada [Kg/segundo]        //atuador("anf12.4");
**/
	pthread_mutex_lock(&mutex);
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
	socket_cliente = prepara_socket(host1, port1);
	write(socket_cliente, str, len);
	nread = read(socket_cliente, buf, BUF_SIZE);
	bzero(buf,BUF_SIZE);
	close(socket_cliente);
	pthread_mutex_unlock(&mutex);
}

void controle_nivel(){
	pthread_mutex_lock(&mutexCtr);
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
	pthread_mutex_unlock(&mutexCtr);
	
}

void controle_temperatura(){
	pthread_mutex_lock(&mutexCtr);
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
	pthread_mutex_unlock(&mutexCtr);
}

void atualiza_tela(){
/**
* "sta0" lê valor de Ta
* "st-0" lê valor de T
* "sti0" lê valor de Ti
* "sno0" lê valor de No
* "sh-0" lê valor de H 
**/
	pthread_mutex_lock(&mutexCtr);
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
	pthread_mutex_unlock(&mutexCtr);
}

void fcntN(void){
	long interval = 70000000;//70ms
	struct timespec t;
	clock_gettime(CLOCK_MONOTONIC, &t);
	while(1){
	
	clock_nanosleep(CLOCK_MONOTONIC, TIMER_ABSTIME, &t, NULL);
	clock_gettime(CLOCK_MONOTONIC, &t);
	atuador("anf",0);
	controle_nivel();
	t.tv_nsec += interval;
		
                while (t.tv_nsec >= NSEC_PER_SEC) {
                       t.tv_nsec -= NSEC_PER_SEC;
                       t.tv_sec++;	
                }
            }
}
void fcntT(void){
	long interval = 90000000;//90ms
	struct timespec t;
	clock_gettime(CLOCK_MONOTONIC, &t);
	while(1){
	
	clock_nanosleep(CLOCK_MONOTONIC, TIMER_ABSTIME, &t, NULL);
	clock_gettime(CLOCK_MONOTONIC, &t);
	controle_temperatura();
	t.tv_nsec += interval;
		
                while (t.tv_nsec >= NSEC_PER_SEC) {
                       t.tv_nsec -= NSEC_PER_SEC;
                       t.tv_sec++;	
                }
            }
}
void ftela(void){
	long interval = 1000000000;//1s
	struct timespec t;
	clock_gettime(CLOCK_MONOTONIC, &t);
	while(1){
	
	clock_nanosleep(CLOCK_MONOTONIC, TIMER_ABSTIME, &t, NULL);
	clock_gettime(CLOCK_MONOTONIC, &t);
	atualiza_tela();
	t.tv_nsec += interval;
		
                while (t.tv_nsec >= NSEC_PER_SEC) {
                       t.tv_nsec -= NSEC_PER_SEC;
                       t.tv_sec++;	
                }
            }
}
void finsBufferN(){

    int n_buffer = 0; // 0 para buffer1_T ; 1 para buffer2_T
    int pos = 0; // indica a posicao para inserir um novo dado

    while(1){
    sleep(2);
    pthread_mutex_lock(&mutexCtr);

    if (n_buffer == 0){
        buffer1_N[pos] = sensor("st-0");
        pos++;
    }
    else{
        buffer2_N[pos] = sensor("st-0");
        pos++;
    }

    if (pos == BUFSIZE){
        bufferUnloadN = n_buffer;
        n_buffer = !n_buffer;
        pos = 0;
        bufferFullN = 1;
        pthread_cond_signal(&wait_bufferN);
    }

    pthread_mutex_unlock(&mutexCtr);
    }
}
void fsaveN(void){
	while(1){
        pthread_mutex_lock(&mutexCtr);

        while(bufferFullN == 0){
            pthread_cond_wait(&wait_bufferN, &mutexCtr);
        }

        FILE *p;
        p = fopen("TemposTemperatura.txt", "a");

        // testa se o arquivo foi aberto corretamente
        if (!p){
            printf("Erro na abertura do arquivo");
            exit(1);
        }

        if(bufferUnloadN == 0){
            int i;
            for(i = 0 ; i < BUFSIZE ; i++){
                fprintf(p, "     Temperatura (T): %f\n", buffer1_N[i]);
            }
        }
        else{
            int i;
            for(i = 0 ; i < BUFSIZE ; i++){
                fprintf(p, "     Temperatura (T): %f\n", buffer2_N[i]);
            }
        }

        fclose(p);
        bufferFullN = 0;
        pthread_mutex_unlock(&mutexCtr);
    }
}
void finsBufferT(){

    int n_buffer = 0; // 0 para buffer1_T ; 1 para buffer2_T
    int pos = 0; // indica a posicao para inserir um novo dado

    while(1){
    sleep(2);
    pthread_mutex_lock(&mutexCtr);

    if (n_buffer == 0){
        buffer1_T[pos] = sensor("st-0");
        pos++;
    }
    else{
        buffer2_T[pos] = sensor("st-0");
        pos++;
    }

    if (pos == BUFSIZE){
        bufferUnloadT = n_buffer;
        n_buffer = !n_buffer;
        pos = 0;
        bufferFullT = 1;
        pthread_cond_signal(&wait_bufferT);
    }

    pthread_mutex_unlock(&mutexCtr);
    }
}
void fsaveT(){

    while(1){
        pthread_mutex_lock(&mutexCtr);

        while(bufferFullT == 0){
            pthread_cond_wait(&wait_bufferT, &mutexCtr);
        }

        FILE *p;
        p = fopen("TemposTemperatura.txt", "a");

        // testa se o arquivo foi aberto corretamente
        if (!p){
            printf("Erro na abertura do arquivo");
            exit(1);
        }

        if(bufferUnloadT == 0){
            int i;
            for(i = 0 ; i < BUFSIZE ; i++){
                fprintf(p, "     Temperatura (T): %f\n", buffer1_T[i]);
            }
        }
        else{
            int i;
            for(i = 0 ; i < BUFSIZE ; i++){
                fprintf(p, "     Temperatura (T): %f\n", buffer2_T[i]);
            }
        }

        fclose(p);
        bufferFullT = 0;
        pthread_mutex_unlock(&mutexCtr);
    }
}

void fsaveTela(void){
	long interval = 10000000000;//10s
	struct timespec t;
	clock_gettime(CLOCK_MONOTONIC, &t);
	while(1){
	
	clock_nanosleep(CLOCK_MONOTONIC, TIMER_ABSTIME, &t, NULL);
	clock_gettime(CLOCK_MONOTONIC, &t);
	armazena_tela();
	t.tv_nsec += interval;
		
                while (t.tv_nsec >= NSEC_PER_SEC) {
                       t.tv_nsec -= NSEC_PER_SEC;
                       t.tv_sec++;	
                }
            }
}
void fref(void){
/*	char ref;
	while(ref != 'r')
		scanf ("%c",&ref);
	pthread_mutex_lock(&mutexCtr);

	pthread_mutex_unlock(&mutexCtr);
*/
}

int main()
{
	int aux=0;
	int it=0, in=0;
	long interval = 10000000; /* 10ms*/ // sensores
	double t_resposta;
        struct timespec t,tt,tn;
	clock_gettime(CLOCK_MONOTONIC, &t);

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
	pthread_create(&cntN,NULL,(void *)fcntN,NULL);
	pthread_create(&cntT,NULL,(void *)fcntT,NULL);
	pthread_create(&tela,NULL,(void *)ftela,NULL);
	pthread_create(&saveN,NULL,(void *)fsaveN,NULL);
	pthread_create(&saveT,NULL,(void *)fsaveT,NULL);
	pthread_create(&insBufferT,NULL,(void *)finsBufferT,NULL);
	pthread_create(&insBufferN,NULL,(void *)finsBufferN,NULL);
	pthread_create(&saveTela,NULL,(void *)fsaveTela,NULL);
	pthread_create(&ref,NULL,(void *)fref,NULL);
	pthread_join(cntN,NULL);
	pthread_join(cntT,NULL);
	pthread_join(tela,NULL);
	pthread_join(saveN,NULL);
	pthread_join(saveT,NULL);
	pthread_join(insBufferT,NULL);
	pthread_join(insBufferN,NULL);
	pthread_join(saveTela,NULL);
	pthread_join(ref,NULL);
	exit(EXIT_SUCCESS);
}




