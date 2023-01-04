INSER_REC = 1
VER_REC = 2
SAIR = 3

def bem_vindo()
    puts "Bem vindo ao cookbook"
end
def menu()
    puts "[#{INSER_REC}] Cadastrar receita"
    puts "[#{VER_REC}] Ver receitas"
    puts "[#{SAIR}] Sair"
    print "Escolha uma opção: "
    return gets.to_i()
end
def inserir_receita()
    puts "Digite o nome da receita: "
    nome = gets.chomp()
    puts "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts
    puts "Receita #{nome} cadastrada com sucesso"
    puts
    return { nome: nome, tipo: tipo}
end
def ver_receita(r)
    puts "==========RECEITAS CADASTRADAS =============="
    r.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
    puts
    if r.empty?
        puts "Nenhum receita cadastrada ainda"
    end
end
bem_vindo()
#menu()
receitas = []

opcao = menu()

loop do
    if(opcao == INSER_REC)
        receitas << inserir_receita()
    elsif(opcao == VER_REC)
        ver_receita(receitas)
    elsif(opcao == SAIR)
        break
    else
        puts "Opção inválida"
    end
    opcao = menu()
end
puts "Volte logo!"