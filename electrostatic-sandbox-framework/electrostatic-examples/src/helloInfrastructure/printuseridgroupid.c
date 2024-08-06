//Print user ID and group ID
#include "apue.h"
int main(){
    printf("uid = %d, gid = %d\n", getuid(), getgid());
    exit(0);
}