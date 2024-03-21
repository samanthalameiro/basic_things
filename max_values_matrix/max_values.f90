program max_values
    implicit none
    integer :: i, j
    integer, parameter :: m = 4, n = 4
    real, dimension(m, n) :: matrix
    real, dimension(n) :: column

        open(10, file = "matrix.dat")
        read(10,*) ((matrix(i,j), j = 1, n), i = 1, m)

            do j = 1, n
                column(j) = maxval(matrix(1 : m, j))
            end do
        print*, "Máximos:"
        write(*, 12) column
        12 format (4(F12.2))
end program max_values