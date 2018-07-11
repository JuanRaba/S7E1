puts 'Se tiene un hash con el inventario de un negocio de computadores.'
puts inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10,
"Impresoras": 6}

puts 'Se pide:
Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según
eso el programa realizará distintas funciones.'
respuesta = 0
until respuesta==7 do

  puts 'El programa debe repertirse hasta que el usuario ingrese 7 (salir).'

  puts 'Ingrese un numero'
  respuesta = gets.chomp

  case respuesta
  when 1
    puts 'Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y
    agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una
    coma.
    Ejemplo del input: "Pendrives, 100"'
    r = "Pendrives, 100"
    parsed = r.split(',', 2).to_a
    inventario[parsed[0]] = parsed[1].to_i
    puts inventario
  when 2
    puts 'Si el usuario ingresa 2, podrá eliminar un item.'
    r = "Routers"
    inventario.delete(r.to_sym) { |el| puts "#{el} not found" }  
    puts inventario
  when 3
    puts 'Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).'
    puts 'item?'
    item = gets.chomp
    puts 'stock?'
    stock = gets.chomp
    inventario[item.to_sym] = stock.to_i
    puts inventario
  when 4
    puts 'Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que
    hay en el negocio.'
    puts inventario.values.reduce(:+)
  when 5
    puts 'Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.'
    puts inventario.max_by { |_key, val| val }[0]
  when 6
    puts 'Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en
    el inventario o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa
    responderá "Sí".'
    puts 'item?'
    item = gets.chomp
    puts inventario.key? item.to_sym
  when 7
    puts "bye"
  else
    puts "You gave me #{respuesta} -- I have no idea what to do with that."
  end
end
