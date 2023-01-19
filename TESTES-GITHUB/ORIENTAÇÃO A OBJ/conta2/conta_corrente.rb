require_relative "conta"
class ContaCorrente < Conta
    attr_accessor :limite

    def initialize(numero, titular, saldo, limite)
        super(numero, titular, saldo)
        @limite = limite
    end
    def sacar(valor)
        if (saldo + limite) >= valor
            self.saldo -= valor
        else
            puts "Saldo insuficiente!"
        end
    end
    def transferir(conta_destino, valor)
        if (saldo + limite >= valor)
            sacar(valor)
            conta_destino.depositar(valor)
        else
            puts "Saldo insuficiente."
        end
    end
end