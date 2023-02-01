# Perguntar o número qualquer ao amigo;
puts "Digite um número: "

# Anotar número no papel;
numero = gets

# Dividir o número por 2;
inteiro = numero.to_i()

# Verificar se resto é 0;
resto = inteiro % 2

# Se resto da divisã por 2 for zero o número é par;
if resto == 0

    # Diga a resposta para o amigo;
    puts "Número é par!"
# Se resto da divisã por 2 não for zero o número é ímpar;
else
    # Diga a resposta para o amigo;
    puts "Número é ímpar!"
end