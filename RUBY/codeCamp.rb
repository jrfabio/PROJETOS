CADASTRO = 1
VER = 2
SAIR = 3

puts "Bem vindo ao cookBook"
receitas = []
def menu()
    puts "[#{CADASTRO}] Cadastro."
    puts "[#{VER}] Ver."
    puts "[#{SAIR}] Sair."
    print "Escolha: "
    return gets.to_i
end
def cadastro()
    puts "Digite o nome da sua receita: "
    nome = gets.chomp()
    puts "Digite o tipo da sua receita: "
    tipo = gets.chomp()
    return {nome: nome, tipo: tipo}
    puts "Receita -#{nome}- salva."
    puts
end
def ver(receitas)
    puts ">>>>>>>>>> RECEITAS <<<<<<<<<<<"
    receitas.each do |receita|
        puts "#{receita[:nome]} -- #{receita[:tipo]}"
    end
    puts
    if receitas.empty?
        puts "Sem receitas ainda."
    end
end

escolha = menu()
loop do
    if (escolha == CADASTRO)
        receitas << cadastro()
    elsif (escolha == VER)
        ver(receitas)
    elsif (escolha == SAIR)
        break
    else
        puts "Opção errada."
    end
    escolha = menu()
end


