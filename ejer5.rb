puts 'Dados los siguientes array:'
meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
puts meses.to_s
puts ventas.to_s

puts 'Generar un hash que contenga los meses como llave y las ventas como valor:
h = {\'Enero\': 2000, \'Febrero\': 3000 ... }'

hash = Hash[meses.zip ventas]
puts hash

puts 'En base al hash generado:
1. Invertir las llaves y los valores del hash.'
# warning expet unique values in hash
invertido = hash.invert
puts invertido

puts '2. Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)'
puts invertido[ invertido.keys.max ]
