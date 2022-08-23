# Uno modificar la variable de la funcion donde esta encerrada
# Que el proc o la lambda se evite salir el return a la funcion
# Crear clase con metodo publica y protegidos, insepeccionar la clase con metaprograming, la clase no se debe de heredar
# Definir una clase dentro de un module, instanciar dentro del modulo o donde deba ser
# NO usar return con procs
def variable_modification
  x = 10
  modifier = Proc.new { |y| x = y }
  modifier.call(2)
  p x
end

variable_modification()

#  valor y en lambda
def self_context
  x = 10
  modifier = -> { x = 2 }
  modifier.call
  p x
end

self_context()

# modulo -> clase (solo dentro del modulo)

module Example
  class ModuleClass
  end
end

# clase -> metodo protegido -> llamarlo en metodo publico (public instance methods)

class Anything
  protected
  def protected_method'
  end
end