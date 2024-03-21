program count_lines !E colunas;
    implicit none 
    integer, parameter :: max_col = 30
    integer :: m, n, j, stat
    !Vetor (x) com 30 espaços ou componenetes;
    !Em cada espaço cabe um conjunto de characters com até 5 characteres, podendo ser uma palavra ou characteres randômicas "coladas"; 
    character (len = 5), dimension(1, max_col) :: x

        open(50, file = "random_file.dat")

        stat = 0 
        m = 0 
        !Loop I: Conta número de linhas do arquivo, desprezando a primeira, e armazena o valor em "n";
        read(50, *)
            do 
                read(50, * , iostat = stat)  
                if(stat /= 0) exit
                m = m + 1
            end do
        rewind(50) !Retorna o início do arquivo;
        !Lê a primeira linha do arquivo e armazena suas caracteres no vetor (x);
        read(50, * , iostat = stat) (x(1, j), j = 1, max_col)

        !Loop II: Numera as caracteres do arquivo até chegar em '*';
        !Feito desta forma para coincidir com o número de colunas;
        n = 1
            do
                if(x(1, n) == '*') exit 
                n = n + 1
            end do
            print*,"Linhas =", m
            print*,"Colunas =", n
        rewind(50)
    return
end program count_lines
