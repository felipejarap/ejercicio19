# Transformar la clase Herviboro en un módulo.
# Implementar el módulo en la clase Conejo mediante Mixin para poder acceder al método dieta desde la instancia.
# Finalmente imprimir la definición de Hervíboro.

module Herviboro
  @@definir = 'Sólo me alimento de vegetales!'
  def self.definir
    puts @@definir
  end

  def dieta
    print "Soy un Hervíboro!\n"
  end
end

class Animal
  def saludar
    print "Soy un animal!\n"
  end
end

class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
Herviboro.definir