program check_file
    implicit none
    character (len = 15) :: arquive
    logical :: file_exist
    
        arquive = "random_file.dat"
        inquire(file = arquive, exist = file_exist)
    !O inquire atribui a variável lógica "file_exist" a existência do arquivo "arquive";
            if(file_exist) then
                print*, "Arquivo encontrado!"
            else
                print*, "Nenhum arquivo foi encontrado!"
            end if
end program check_file