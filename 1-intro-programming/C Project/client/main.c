#include <stdio.h>
#include <winsock.h>
#include <conio.h>
#include <windows.h>
#include <string.h>
#define IP "127.0.0.1"
WSADATA data;
SOCKET winsock;
SOCKADDR_IN sock;
long int mat;
char sair;
char envio[50];
char resposta[50];
int bytes;

int main(){
    if(WSAStartup(MAKEWORD(1,1),&data)==SOCKET_ERROR){
        printf("Erro ao inicializar o winsock");
        return 0;
    }
    if((winsock = socket(AF_INET,SOCK_STREAM,0))==SOCKET_ERROR){
        printf("Erro ao criar socket");
        return 0;
    }
    sock.sin_family = AF_INET;
    sock.sin_port = htons(1234);
    sock.sin_addr.s_addr = inet_addr(IP);
    if(connect(winsock,(SOCKADDR*)&sock,sizeof(sock))==SOCKET_ERROR){
        printf("Erro ao se conectar");
        return 0;
    }
    printf("Conectado!\n");
    while(sair!='s'){
        //Sleep(1);
        printf("\nDigite uma matricula:\n");
        scanf("%ld",&mat);
        itoa(mat,envio,10);
        send(winsock,envio,strlen(envio),0);
        memset(resposta,0,50);
        bytes = recv(winsock,resposta,50,0);
        if(bytes==-1){
            printf("Conexão perdida");
            getch();
            return 0;
        }
        if(!strcmp(resposta,"negado")){
            //printf("%s",resposta);
            printf("Acesso Negado! Nao esta cadastrado\ns para sair\n");
        }else{
            printf("%s! Esta cadastrado...\ns para sair\n",resposta);
        }
        sair = getch();
    }
    getch();
    closesocket(winsock);
    WSACleanup();
    return 0;
}
