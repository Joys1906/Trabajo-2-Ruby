class Calcular
  def initialize(numero)
    @numero = numero.to_s
  end

  def suma_pares
    pares = @numero.chars.select { |char| char.to_i.even? }.map(&:to_i)
    pares.sum
  end

  def suma_impares
    impares = @numero.chars.select { |char| char.to_i.odd? }.map(&:to_i)
    impares.sum
  end
end

# Solicitar al usuario un número
print "Ingrese un número: "
numero_usuario = gets.chomp

# Crear una instancia de la clase Calcular
calculadora = Calcular.new(numero_usuario)

# Mostrar los resultados
puts "Suma de números pares: #{calculadora.suma_pares}"
puts "Suma de números impares: #{calculadora.suma_impares}"
