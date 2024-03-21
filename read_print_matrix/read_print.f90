program read_print_matrix
    implicit none
    integer :: i, j
    integer, parameter :: My_Matrix = 50
    integer, parameter :: m = 4, n = 4
    real, dimension(m, n) :: matrix

        open(My_Matrix, file = "matrix.dat")
        read(My_Matrix,*) ((matrix(i,j), j = 1, n), i = 1, m)
        print*, "############### Print: My_Matrix ###############"
        write(*, 15) ((matrix(i,j), j = 1, n), i = 1, m)

        15 format(4(F12.2))
end program read_print_matrix