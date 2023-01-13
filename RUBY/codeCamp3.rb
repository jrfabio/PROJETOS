POR = 1
VER = 2
SAIR = 3

puts "***********Bem vindo!************"
puts
def menu()
    puts "[#{POR}] Cadastrar."
    puts "[#{VER}] Ver."
    puts "[#{SAIR}] Sair."
    print "Escolha uma opção: "
    return gets.to_i
end
def cadastrar()
    print "Digite o nome da receita: "
    nome = gets.chomp()
    print "Digite o tipo da receita: "
    tipo = gets.chomp()
    
    puts "----->> Receita #{nome} cadastrada com sucesso!"
    puts
    return {nome: nome, tipo: tipo}
end
def ver(receitas)
    puts "************RECEITAS************"
    receitas.each do |receita|
        puts "NOME: #{receita[:nome]} --- TIPO: #{receita[:tipo]}"
        puts
    end
    if receitas.empty?
        puts "Sem receita ainda :)"
        puts
    end
    
end


receitas = []
opacao = menu()


loop do
    if (opacao == POR)
        receitas << cadastrar()
    elsif (opacao == VER)
        ver(receitas)
    elsif (opacao == SAIR)
        puts "Saindo..."
        break
    else
        puts "----->> opção inválida!"
        puts
    end
    opacao = menu()

end