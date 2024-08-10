//Example of setjum and longjmp
#include "apue.h"
#include <setjmp.h>
#define TOK_ADD 5
void do_line(char *);
void cmd_add(void);
int get_token(void);
jmp_buf jmpbuffer;
int main(){
    char line[MAXLINE];
    if(setjmp(jmpbuffer)!=0){
        printf("error");
    }
    while(fgets(line,MAXLINE, stdin)!=NULL){
        do_line(line);
    }
    exit(0);

}
char *tokptr;
void do_line(char *ptr){
    int cmd;
    tokptr =ptr;
    while((cmd=get_token())>0){
        switch(cmd){
            case TOK_ADD:
                cmd_add();
                break;
        }
    }
}
void cmd_add(void){
    int token;
    token = get_token();
    if (token < 0)
    {
        longjmp(jmpbuffer,1);
    }
    

}
int get_token(void){
    
}