INSERIR = 1
VER = 2
SAIR = 3

puts "Olah from cookBook!"
def menu()
    puts "[#{INSERIR}] Inserir receita"
    puts "[#{VER}] Ver receitas"
    puts "[#{SAIR}] Sair"
    print "Escolha: "
    return gets.to_i
end
def inserir()
    puts "Digite o nome da receita: "
    nome = gets.chomp()
    puts "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts
    puts "Receita #{nome} cdastrada!"
    return {nome: nome, tipo: tipo}

    puts
end
def ver(receitas)
    puts "´´´´´´´´´´´´´´´  RECEITAS  ´´´´´´´´´´´´´´´"
    receitas.each do |receita|
        puts "#{receita[:nome]} ---- #{receita[:tipo]}"
        puts
    end
    if receitas.empty?
        puts "Não há receitas"
    end
    
end


receitas = []
opcao = menu()

loop do
    if (opcao == INSERIR)
        receitas << inserir()
    elsif (opcao == VER)
        ver(receitas)
    elsif (opcao == SAIR)
        break
    else
        puts "----->  Opção invalida."
    end
    opcao = menu()
end
puts "------->  Volte logo!  <---------"


