module pass
    implicit none
    integer :: fact
    integer :: n
end module pass

program factorial_function
    use pass
    implicit none

    print*, "Enter the number: "
    read*, n

call factorial
    print*, "Factorial:", fact
end program factorial_function

subroutine factorial
    use pass
    implicit none
    integer :: i
        fact = 1
           do i = 1, n
                fact = fact*i
           end do
end subroutine factorial