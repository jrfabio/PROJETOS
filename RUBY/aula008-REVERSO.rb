CADASTRAR = 1
VER = 3
SAIR = 4
BUSCAR = 2

def ola()
    puts "Bem vindo"
end

def menu()
    puts "[#{CADASTRAR}] Cadastrar."
    puts "[#{BUSCAR}] Buscar"
    puts "[#{VER}] Ver."
    puts "[#{SAIR}] Sair."
    puts "Escolha uma opção."
    opcao = gets.to_i
    
end

def cadastrar()
    puts "Digite o nome da receita."
    nome = gets.chomp()
    puts "Digite o tipo da receita."
    tipo = gets.chomp()
    puts "Receita #{nome} cadastrada com sucesso."
    return {nome: nome, tipo: tipo}
end

def ver(r)
    puts "========== RECEITAS ==========="
    r.each do |receita|
        puts "#{receita[:nome]} ============= #{receita[:tipo]}"
    end
    if r.empty?
        puts "Sem receita ainda"
    end
end
def search_by_name(receitas)
    print 'Informe o nome da receita:  '
    wanted_recipe = gets.chomp
    receitas.select {|receita| receita[:name].casecmp(wanted_recipe) == 0}
end
ola()
receitas = []
opcao = menu()
loop do
    
    if (opcao == CADASTRAR)
        receitas << cadastrar()
    elsif (opcao == VER)
        ver(receitas)
    elsif (opcao == BUSCAR)
        search_by_name(receitas)
    elsif (opcao == SAIR)
        break
    else
        puts "Opção inválida"
    end
    opcao = menu()
    
end
puts "Obrigado!"
