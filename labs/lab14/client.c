/*
 * client.c - реализация клиента
 *
 * чтобы запустить пример, необходимо:
 *  1. запустить программу server на одной консоли;
 *  2. запустить программу client на другой консоли.
 */
#include "common.h"
#include "time.h"

int main() {
    int writefd; /* дескриптор для записи в FIFO */ int msglen;
/* баннер */
    printf("FIFO Client...\n");
    /* получим доступ к FIFO */
    if ((writefd = open(FIFO_NAME, O_WRONLY)) < 0) {
        fprintf(stderr, "%s: Невозможно открыть FIFO (%s)\n",
                __FILE__, strerror(errno));
        exit(-1);
    }

    while (1) {
        /* передадим сообщение серверу */
        time_t rawtime;
        struct tm *timeinfo;
        time(&rawtime);
        timeinfo = localtime(&rawtime);
        char *message = asctime(timeinfo);
        msglen = strlen(message);
        if (write(writefd, message, msglen) != msglen) {
            fprintf(stderr, "%s: Ошибка записи в FIFO (%s)\n",
                    __FILE__, strerror(errno));
            exit(-2);
        }
//        fprintf(stdout, "test %ld", clock());
        sleep(5);
    }
    /* закроем доступ к FIFO */
    close(writefd);
    exit(0);
}