///////////////// Projeto C - Sistema de Cadastros /////////////////
//// Universidade Federal de Santa Catarina                     ////
//// Disciplina: Introdução à Informática para Automação 01220B ////
//// Professor: Leandro Buss Becker                             ////
//// Graduando: Ígor Assis Rocha Yamamoto                       ////
//// Matrícula: 14101045                                        ////
////////////////////////////////////////////////////////////////////

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <conio.h>
#include <winsock.h>
#include <windows.h>
#define SIZE 500
WSADATA data;
SOCKET winsock;
SOCKADDR_IN sock;
char mensagem[50];
char resposta[50];
int bytes;
int nReg=0;
FILE *arq;

struct registro{
    char nome[50];
    long int matricula;
    char email[50];
} *cadastro[SIZE];

char menu(){
    char a;
    do{
        printf("Numero de cadastros: %d\n\n",nReg);
        printf("Escolha uma opcao:\n\n(1) Incluir\n(2) Pesquisar\n(3) Mostrar cadastros\n(4) Remover\n(5) Conexao\n(6) Sair\n");
        a = getch();
        system("cls");
    }while((a!='1')&&(a!='2')&&(a!='3')&&(a!='4')&&(a!='5')&&(a!='6')&&(a!='r'));
    return a;
}
void digitar(char str[50]){
    char a;
    int i;
    for(i=0;i<50;i++){
        a=getc(stdin);
        if(a=='\n'){
            str[i]='\0';
            break;
        }
        str[i]=a;
    }
}
void atualizar_cadastros(){
    arq = fopen("cadastros.txt","r+");
    if (arq==NULL){
        fclose(arq);
        return;
    }
    while(!feof(arq)){
        cadastro[nReg] = (struct registro*)malloc(sizeof(struct registro));
        fread(cadastro[nReg],sizeof(struct registro),1,arq);
        nReg++;
    }
    nReg--;
    fclose(arq);
}
void salvar_cadastro(struct registro *cad){
    arq = fopen("cadastros.txt","a+");
    fwrite(cad,sizeof(struct registro),1,arq);
    fclose(arq);
}
void incluir(struct registro *cad){
    int verf = 0, i = 0;
//Incluir o Nome:
    do{
        printf("Cadastrando...\n\nDigite o nome:\n");
        digitar(cad->nome);
        do{
            if (cad->nome[0]=='\0'){
                verf = 1;
                i = 0;
                printf("Por favor insira um nome para continuar o cadastro\n\n");
                system("pause");
                system("cls");
                break;
            }
            if ((nReg!=0)&&(!strcmp(cad->nome,cadastro[i]->nome))){
                printf("Este nome ja esta cadastrado\n\n");
                system("pause");
                system("cls");
                verf = 1;
                break;
            }
            verf = 0;
            i++;
        }while(i<nReg);
    }while(verf);
//Incluir a Matrícula:
    do{
        if(verf==1){
            printf("Cadastrando...\n\nDigite o nome:\n%s\n",cad->nome);
        }
        printf("\nDigite a matricula:\n");
        scanf("%ld",&cad->matricula);
        setbuf(stdin,NULL);
        for(i=0;i<nReg;i++){
            if (cad->matricula==cadastro[i]->matricula){
                printf("Este numero de matricula ja esta cadastrado\n\n");
                system("pause");
                system("cls");
                verf = 1;
                break;
            }
            verf = 0;
        }
    }while(verf);
//Incluir o E-mail:
    i=0;
    do{
        if(verf==1){
            printf("Cadastrando...\n\nDigite o nome:\n%s\n\nDigite a matricula:\n%ld\n",cad->nome,cad->matricula);
        }
        printf("\nDigite o e-mail:\n");
        digitar(cad->email);
        do{
            if (cad->email[0]=='\0'){
                verf = 1;
                i = 0;
                printf("Por favor insira um e-mail para continuar o cadastro\n\n");
                system("pause");
                system("cls");
                break;
            }
            if ((nReg!=0)&&(!strcmp(cad->email,cadastro[i]->email))){
                printf("Este e-mail ja esta cadastrado\n\n");
                system("pause");
                system("cls");
                verf = 1;
                break;
            }
            verf = 0;
            i++;
        }while(i<nReg);
    }while(verf);
    system("cls");
    printf("Cadastro efetuado com sucesso!\n\n");
}
void imprimir_1(struct registro *cad){
    printf("nome: %s\n",cad->nome);
    printf("matricula: %ld\n",cad->matricula);
    printf("email: %s\n\n",cad->email);
}
void pesquisar (){
    int i;
    long int mat;
    char pesq, nome[50], mail[50];
    do{
    printf("Escolha uma opcao de pesquisa:\n\n(1) Por Nome\n(2) Por Matricula\n(3) Por E-mail\n");
    pesq = getch();
    system("cls");
    switch(pesq){
        case '1':
            printf("Pesquisando Cadastro...\n\nDigite um nome:\n");
            digitar(nome);
            for(i=0;i<nReg;i++){
                if (strcmp(nome,cadastro[i]->nome)==0){
                    system("cls");
                    printf("Cadastrado encontrado:\n\n");
                    imprimir_1(cadastro[i]);
                    return;
                }
            }
            break;
        case '2':
            printf("Pesquisando Cadastro...\n\nDigite um numero de matricula:\n");
            scanf("%ld",&mat);
            setbuf(stdin,NULL);
            for(i=0;i<nReg;i++){
                if (mat==cadastro[i]->matricula){
                    system("cls");
                    printf("Cadastrado encontrado:\n\n");
                    imprimir_1(cadastro[i]);
                    return;
                }
            }
            break;
        case '3':
            printf("Pesquisando Cadastro...\n\nDigite um e-mail:\n");
            digitar(mail);
            for(i=0;i<nReg;i++){
                if (strcmp(mail,cadastro[i]->email)==0){
                    system("cls");
                    printf("Cadastrado encontrado:\n\n");
                    imprimir_1(cadastro[i]);
                    return;
                }
            }
            break;
    }
    }while((pesq!='1') && (pesq!='2') && (pesq!='3'));
    system("cls");
    printf("Nenhum cadastrado nao foi encontrado\n\n");
}
void remocao(int pos){
    int i;
    arq = fopen("cadastros.txt","w+");
    for(i=pos+1;i<nReg;i++){
        cadastro[i-1]=cadastro[i];
    }
    for(i=0;i<nReg-1;i++){
        fwrite(cadastro[i],sizeof(struct registro),1,arq);
    }
    fclose(arq);
}
void remover(){
    int pos;
    char selec;
    long int mat_rem;
    char nome_rem[50];
    do{
    printf("Selecione uma opcao de remocao:\n\n(1) Por Nome\n(2) Por Matricula\n");
    selec = getch();
    system("cls");
    switch(selec){
        case '1':
            printf("Removendo Cadastro...\n\nDigite um nome:\n");
            digitar(nome_rem);
            system("cls");
            for(pos=0;pos<nReg;pos++){
                if (strcmp(nome_rem,cadastro[pos]->nome)==0){
                        imprimir_1(cadastro[pos]);
                        printf("Tem certeza que deseja remover o cadastro?\n(1) Sim\t(2) Nao\n");
                        selec = getch();
                        if (selec!='1'){
                            return;
                        }
                        remocao(pos);
                        nReg--;
                        printf("Cadastrado removido com sucesso!\n\n");
                        return;
                }
            }
            printf("O nome \"%s\" nao esta cadastrado\n\n",nome_rem);
            break;
        case '2':
            printf("Removendo Cadastro...\n\nDigite um numero de matricula:\n");
            scanf("%ld",&mat_rem);
            setbuf(stdin,NULL);
            system("cls");
            for(pos=0;pos<nReg;pos++){
                if (mat_rem==cadastro[pos]->matricula){
                        imprimir_1(cadastro[pos]);
                        printf("Tem certeza que deseja remover o cadastro?\n(1) Sim\t(2) Nao\n");
                        selec = getch();
                        if (selec!='1'){
                            return;
                        }
                        remocao(pos);
                        nReg--;
                        printf("Cadastrado removido com sucesso!\n\n");
                        return;
                }
            }
            printf("A matricula \"%ld\" nao esta cadastrada\n\n",mat_rem);
            break;
    }
    }while((selec!='1') && (selec!='2'));
}
void ordenar(){
    int comp, i, j;
    char op;
    struct registro *temp;
    do{
        printf("Ordenar por:\n\n(1) Nome\n(2) Numero de Matricula\n");
        op = getch();
        system("cls");
        switch(op){
            case '1':
                for (i=0;i<nReg-1;i++){
                    for(j=i+1;j<nReg;j++){
                        comp = strncmp(cadastro[i]->nome,cadastro[j]->nome,50);
                        if (comp>0){
                            temp = cadastro[i];
                            cadastro[i] = cadastro[j];
                            cadastro[j] = temp;
                        }
                    }
                }
            case '2':
                for (i=0;i<nReg-1;i++){
                    for(j=i+1;j<nReg;j++){
                        if(cadastro[i]->matricula > cadastro[j]->matricula){
                            temp = cadastro[i];
                            cadastro[i] = cadastro[j];
                            cadastro[j] = temp;
                        }
                    }
                }
        }
    }while((op!='1')&&(op!='2'));
}
void imprimir(){
    int i;
    if(nReg==0){
        printf("Nenhum cadastro encontrado\n\n");
        return;
    }
    ordenar();
    for(i=0;i<nReg;i++){
        printf("nome: %s\n",cadastro[i]->nome);
        printf("matricula: %ld\n",cadastro[i]->matricula);
        printf("email: %s\n",cadastro[i]->email);
        printf("----------------------------------------\n");
    }
}
void reset(){
    int i;
    char a;
    system("cls");
    printf("Deseja resetar o sistema?\n(1) Sim\t(2) Nao\n");
    a = getch();
    if(a!='1'){
        return;
    }
    arq = fopen("cadastros.txt","w+");
    fclose(arq);
    for(i=0;i<nReg;i++){
        free(cadastro[i]);
    }
    nReg = 0;
}
void checar(long int mat){
    int i;
    for(i=0;i<nReg;i++){
        if (mat==cadastro[i]->matricula){
            //strcpy(buffer,"aceito");
            strcpy(resposta,cadastro[i]->nome);
            return;
        }
    }
    strcpy(resposta,"negado");
}
void conexao(){
    long int mat;
    if(WSAStartup(MAKEWORD(1,1),&data) == SOCKET_ERROR){
        printf("Erro ao inicializar o winsock");
        return;
    }
    if((winsock = socket(AF_INET,SOCK_STREAM,0)) == SOCKET_ERROR){
        printf("Erro ao criar socket");
        return;
    }
    sock.sin_family = AF_INET;
    sock.sin_port = htons(1234);
    if(bind(winsock,(SOCKADDR*)&sock,sizeof(sock)) == SOCKET_ERROR){
        printf("Erro colocar utilizar a funcao BIND");
        return;
    }
    listen(winsock,1);
    while((winsock = accept(winsock,0,0)) == SOCKET_ERROR){
        Sleep(1);
    }
    printf("\nCliente conectado!\n");
    while(1){
        Sleep(1);
        memset(mensagem,0,50);
        bytes = recv(winsock,mensagem,50,0);
        if(bytes == -1){
            closesocket(winsock);
            WSACleanup();
            printf("\nConexao perdida\n");
            getch();
            return;
        }
        printf("%s",mensagem);
        mat = atoi(mensagem);
        checar(mat);
        send(winsock,resposta,strlen(resposta),0);
    }
    getch();
    closesocket(winsock);
    WSACleanup();
    return;
}

int main(void){
    char opcao;
    atualizar_cadastros();
    do{
        opcao = menu();
        switch(opcao){
            case '1':
                cadastro[nReg] = (struct registro*)malloc(sizeof(struct registro));
                incluir(cadastro[nReg]);
                salvar_cadastro(cadastro[nReg]);
                nReg++;
                break;
            case '2':
                pesquisar();
                break;
            case '3':
                imprimir();
                break;
            case '4':
                remover();
                break;
            case '5':
                conexao();
                break;
            case 'r':
                reset();
                break;
        }
        system("pause");
        system("cls");
    }while(opcao!='6');
    return 0;
}


