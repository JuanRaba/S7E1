puts 'Dado el hash:'
h = { "x": 1, "y": 2 }

puts 'Agregar el string z con el valor 3.'
h['z'] = 3
puts h

puts 'Cambiar el valor de x por 5.'
h[:x] = 5
puts h

puts 'Eliminar la clave y.'
h.delete(:y)
puts h

puts 'Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".'
puts "yeeah" if h['z']

puts 'Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
Ejemplo:
 x = {"a": "hola" }
Se transforme en:
x = {"hola": "a"}'

h = h.invert
puts h
