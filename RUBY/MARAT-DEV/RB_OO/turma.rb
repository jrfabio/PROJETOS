class Turma
    attr_accessor :nome, :numero_sala, :prof_responsavel
    def initialize(nome, numero_sala, prof_responsavel)
        @nome = nome
        @numero_sala = numero_sala
        @prof_responsavel = prof_responsavel
    end    
end