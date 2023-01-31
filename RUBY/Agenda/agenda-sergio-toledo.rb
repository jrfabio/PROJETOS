# coding: utf-8

agenda = {
    Leticia: "1111-2222",
    Amanda: "3333-4444"
}

while true
    puts ""
    puts "1 - Adicionar"
    puts "2 - Atualizar"
    puts "3 - Exibir"
    puts "4 - Excluir"
    puts "5 - Sair"
    print "Escolha uma opção: "
    escolha = gets.chomp()
    puts""

    case escolha
    when "5"
        break
    when "1"
        print "Digite o nome do contato: "
        nome = gets.chomp()
        if agenda[nome.to_sym].nil?
            print "Digite o telefone: "
            telefone = gets.chomp()
            agenda[nome.to_sym] = telefone
        else
            puts "Este nome já esxiste!"
        end
    
    when "2"
        print "Digite o nome do contato que deseja atualizar: "
        nome = gets.chomp()
        if agenda[nome.to_sym].nil?
            puts "Este nome não esxiste!"
        else
            print "Digite o telefone: "
            telefone = gets.chomp()
            agenda[nome.to_sym] = telefone
        end
    when "3"
        agenda.each do |nome, telefone|
            puts "NOME: #{nome} - TELEFONE: #{telefone}"
        end
    when "4"
        puts "Digite o nome que deseja apagar: "
        nome = gets.chomp()
        if agenda[nome].to_sym.nil?
            puts "Este nome não existe!"
        else
            agenda.delete(nome.to_sym)
            puts "#{nome} foi apagado."
        end
    else
        puts "Ops, opção inválida!"
    end
   
end