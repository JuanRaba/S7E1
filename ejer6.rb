puts 'Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor
es el precio de este.'

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
puts restaurant_menu

# considering restaurant_menu have all diferent values this is correct
puts '1. Obtener el plato mas caro.'
puts restaurant_menu.max_by { |_key, val| val }[0]

puts '2. Obtener el plato mas barato.'
puts restaurant_menu.min_by { |_key, val| val }[0]

puts '3. Sacar el promedio del valor de los platos.'
a = restaurant_menu.values
# other way  a.inject(0.0) { |result, el| result + el } / a.size.to_f
# similar way a.reduce(:+) / a.size.to_f
puts a.instance_eval { reduce(:+) / size.to_f }

puts '4. Crear un arreglo con solo los nombres de los platos.'
puts restaurant_menu.keys.to_s

puts '5. Crear un arreglo con solo los valores de los platos.'
puts restaurant_menu.values.to_s

puts '6. Modificar el hash y agregar el IVA a los valores de los
 platos (multiplicar por 1.19).'
restaurant_menu = restaurant_menu.map { |k, v| [k, v * 1.19] }.to_h
puts restaurant_menu.to_s

puts '7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una
palabra.'
restaurant_menu.each do |k, _v|
  restaurant_menu[k] *= 0.8 if k.to_s.include? ' '
end
puts restaurant_menu.to_s
