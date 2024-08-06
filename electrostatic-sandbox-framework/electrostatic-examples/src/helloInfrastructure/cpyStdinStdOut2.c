// Using Standard I/O lib
#include "apue.h"
#define BUFFERSIZE 4096

int main(void){
    int c;
    // char buf[BUFFERSIZE];
    while ((c = getc(stdin)) != EOF)
    {
       if (putc(c, stdout) == EOF)
       {
            err_sys("output error");
       } }
       if (ferror(stdin))
       {
        err_sys("input error");
       }
       exit(0);
       
       
   
    
}