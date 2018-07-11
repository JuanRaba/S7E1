personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

hash = Hash[personas.zip edades]
puts hash

puts '2. Crear un método que reciba el hash y
 devuelva la edad del hash pasado como argumento'

def edad(hash)
  hash.values
end

print edad(hash)
