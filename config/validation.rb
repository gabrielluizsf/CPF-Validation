require 'cpf_cnpj'

     def userchoice
        puts "Sim = 1\n\n"
        puts "Não = 0\n\n"
     end
def userchoice_generate
           
    userinput=gets.chomp.to_i
    if userinput == 1
        generateCpf
    else
        puts "\n\nBye\n\n"
    end
end

def validation cpf
    if CPF.valid?(cpf)==true
        puts "O cpf -> #{cpf} é valido"
    
else
    puts "\n\n[Cpf Invalido]"
    puts "\n\nQuer Gerar 1 CPF?\n\n"
      userchoice
      userchoice_generate
end
end


def generateCpf
    puts"Gerando Cpf:"
    cpf= CPF.generate
    puts "\n\nCPF VALIDO:  #{cpf}"
   puts "\n\nDeseja validar um novo CPF?\n\n"
       userchoice
 
     userchoice_generate
    end

   puts "Escolha seu cpf\n"
    yourcpf=gets.chomp.to_i
    validation  yourcpf
