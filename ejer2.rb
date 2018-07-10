puts '1. Se tiene el siguiente hash:'
productos = { 'bebida': 850,
              'chocolate' => 1200,
              'galletas' => 900,
              'leche' => 750 }

puts 'y se realiza la siguiente consulta para conocer los productos existentes:'
puts 'Productos.each { |valor, producto| puts producto }'
puts 'Corrige el error para mostrar la información solicitada.'

productos.each { |producto, _valor| puts producto }

puts '2. Se quiere agregar un nuevo producto al hash:
      producto[2200] = cereal
      Corrige la instrucción para agregar el producto.'

productos['cereal'] = 2200

puts productos

puts '3. Se quiere actualizar el precio de la bebida:
producto[:bebida] = 2000
Corrige la instrucción para actualizar el valor del producto existente'

productos[:bebida] = 2000

puts productos

puts '4. Convertir el hash en un array y guardarlo en una nueva variable.'

array = productos.to_a

print array
puts ""

puts '5. Eliminar el producto \'galletas\' del hash'

productos.delete('galletas')
puts productos
