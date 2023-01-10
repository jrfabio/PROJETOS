CADAS = 1
VER = 2
SAIR =3

puts "Olah usuário!"
def menu()
    puts "[#{CADAS}] Cadastrar."
    puts "[#{VER}] Ver."
    puts "[#{SAIR}] Sair."
    print "Escolha: "
    return gets.to_i
end
def cadastrar()
    print "Digite o nome da receita: "
    nome = gets.chomp()
    print "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts "Receita #{nome} cadastrada!"
    return {nome: nome, tipo: tipo}
end
def ver(receitas)
    puts "**********RECEITAS**********"
    receitas.each do |receita|
        puts "#{receita[:nome]} ---- #{receita[:tipo]}"
    end
    if receitas.empty?
        puts "Não há receita."
    end
end



receitas = []

opcao = menu()

loop do
    if (opcao == CADAS)
        receitas << cadastrar()
    elsif (opcao == VER)
        ver(receitas)
    elsif (opcao == SAIR)
        break
    else
        puts "Opção inválida"
    end
    opcao = menu()
end