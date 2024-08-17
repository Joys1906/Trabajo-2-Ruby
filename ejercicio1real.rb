# Crear el hash con nombres y números de celular
contactos = {
  'Maria' => '2248-6559',
  'Pedro' => '9845-6532',
  'Juan' => '8265-4536',
  'Alberto' => '7896-4514'
}

loop do
  # Mostrar el hash completo
  puts "Hash completo:"
  contactos.each do |nombre, celular|
    puts "#{nombre}: #{celular}"
  end
  
  puts "----------------------------------------"
  
  # Solicitar al usuario que ingrese un nombre
  print "Ingrese el nombre para buscar el celular: "
  nombre_usuario = gets.chomp

  # Convertir el nombre ingresado a título (inicial mayúscula y el resto minúsculas)
  nombre_usuario_capitalizado = nombre_usuario.capitalize
  puts "--------------------------------------"
  
  # Buscar y mostrar el número de celular correspondiente
  if contactos.key?(nombre_usuario_capitalizado)
    puts "El celular de #{nombre_usuario_capitalizado} es #{contactos[nombre_usuario_capitalizado]}."
  else
    puts "El nombre '#{nombre_usuario}' no se encuentra en la lista."
  end
  
  # Preguntar al usuario si desea continuar o salir
  print "¿Desea buscar otro nombre? (Presione 'S' para salir): "
  respuesta = gets.chomp.upcase
  
  # Salir del bucle si el usuario presiona 'S'
  break if respuesta == 'S'
end

puts "Gracias por usar el programa."
