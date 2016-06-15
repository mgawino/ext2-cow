Sposób użycia (jako root):

    make test

Poprawny wynik:

    ./prepare_fs
    ./test_regression
    ./prepare_fs
    ./test_simple
    ./prepare_fs
    ./test_multiple
    ./prepare_fs
    ./test_write
    ./prepare_fs
    ./test_unlink
    ./prepare_fs
    ./test_no_space
    ./prepare_fs
    ./test_size
    ./prepare_fs
    ./test_sparse
    ./prepare_fs
    ./test_sparse_write
    ./prepare_fs
    ./test_mmap

Testy są przeznaczone do użycia wewnątrz maszyny wirtualnej.
Niektóre ustawienia można zmienić w settings.sh.

Każdy z testów jest wart 1 punkt.
