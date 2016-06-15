#include <sys/mman.h>
#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>


void usage() {
    fprintf(stderr, "Usage: mmap-tool path RDONLY|WRONLY|RDWR PRIVATE|SHARED read|write offset size [block_size]\n");
    fprintf(stderr, "  block_size defauls to 512\n");
}

int main(int argc, char **argv) {
    int mode;
    char *path;
    int map_mode, op, offset, size, block_size = 512;
    int fd, todo;
    char *addr, *cur_addr;

    if (argc != 7 && argc != 8) {
        usage();
        exit(1);
    }

    path = argv[1];

    if (!strcmp(argv[2], "RDONLY"))
        mode = O_RDONLY;
    else if (!strcmp(argv[2], "WRONLY"))
        mode = O_WRONLY;
    else if (!strcmp(argv[2], "RDWR"))
        mode = O_RDWR;
    else {
        usage();
        exit(1);
    }

    if (!strcmp(argv[3], "PRIVATE"))
        map_mode = MAP_PRIVATE;
    else if (!strcmp(argv[3], "SHARED"))
        map_mode = MAP_SHARED;
    else {
        usage();
        exit(1);
    }

    if (!strcmp(argv[4], "read"))
        op = 0;
    else if (!strcmp(argv[4], "write"))
        op = 1;
    else {
        usage();
        exit(1);
    }
    
    offset = atoi(argv[5]);
    size = atoi(argv[6]);

    if (argc == 8)
        block_size = atoi(argv[7]);

    fd = open(path, mode);
    if (fd == -1) {
        perror("open");
        exit(1);
    }

    addr = mmap(NULL, size, op ? PROT_WRITE : PROT_READ, map_mode, fd, offset);
    if (addr == MAP_FAILED) {
        perror("mmap");
        exit(1);
    }

    if (close(fd) == -1) {
        perror("close");
        exit(1);
    }

    todo = size;
    cur_addr = addr;
    while (todo) {
        int ret;

        if (todo < block_size)
            block_size = todo;
        
        if (op)
            ret = read(0, cur_addr, block_size);
        else 
            ret = write(1, cur_addr, block_size);

        if (ret == -1) {
            perror("read/write");
            exit(1);
        }
        if (ret == 0)
            break;
        todo -= ret;
        cur_addr += ret;
    }

    if (munmap(addr, size) == -1) {
        perror("munmap");
        exit(1);
    }
    return 0;
}
