program fact_function
    implicit none
    integer :: i, j
    integer :: n
    integer :: fact
        fact = 1
        n = 3
           do i = 1, n
                fact = fact*i
           end do
        print*, fact
end program fact_function