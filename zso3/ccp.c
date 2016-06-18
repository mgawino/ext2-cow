#include <stdio.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <stdlib.h>

void usage() {
    printf("Usage: ./ccp source_file destination_file\n");
}

int main(int argc, char * argv[]) {
    if (argc != 3) {
        fprintf(stderr, "Invalid number of arguments\n");
        usage();
        exit(1);
    }
    int input_fd = open(argv[1], O_RDONLY);
    if (input_fd < 0) {
        perror("Input file");
        exit(1);
    }
    int output_fd = open(argv[2], O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP);
    if (output_fd < 0) {
        perror("Output file");
        exit(1);
    }
    if (ioctl(output_fd, 42, input_fd) < 0) {
        perror("Failed ioctl");
        exit(1);
    }
    return 0;
}