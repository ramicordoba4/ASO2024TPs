#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <sys/wait.h>

int main(){
    pid_t child_pid;
    child_pid= fork (); //crea nuevo proceso hijo
    if (child_pid < 0){
        printf ("fallo el fork! ");

        return 1;
    }   else if (child_pid == 0){
        printf ("ME ACABA DE CREAR, SOY UN PROCESO HIJO!, MI PROCES ID ES = %d, Y EL DEL MI PADRE ES= %d/n",getpid(),getppid());
    }   else {
        wait(NULL); //bloquea al padre hasta que todos los hjos finalicen

        printf("SOY EL PADRE! ");
        printf("MI PROCESS ID ES= %d, Y EL DE MI PADRE= %d, Y EL DEL HIJO RECIEN CREADO= %d/n",getpid(),getppid(),child_pid);
    }

    sleep(10);
    return 0;
}