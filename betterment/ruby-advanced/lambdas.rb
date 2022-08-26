# Uno modificar la variable de la funcion donde esta encerrada
# Que el proc o la lambda se evite salir el return a la funcion
# Crear clase con metodo publica y protegidos, insepeccionar la clase con metaprograming, la clase no se debe de heredar
# Definir una clase dentro de un module, instanciar dentro del modulo o donde deba ser
# NO usar return con procs
def variable_modification
  x = 10
  modifier = proc { |y| x = y }
  p modifier.call(2)
end

variable_modification

#  valor y en lambda
def self_context
  modifier = -> { return 2 }
  modifier.call
end

self_context

# modulo -> clase (solo dentro del modulo)

module Example
  class Homework
    def activity
      puts "Hola a todos"
    end
  end

  def school
    Homework.new.activity
  end
end

# clase -> metodo protegido -> llamarlo en metodo publico (public instance methods)

class Anything
  def animals
    extinct_animals
  end

  protected

  def extinct_animals
    puts 'im protected'
  end
end

Anything.public_instance_methods[0]
Anything.new.animals
