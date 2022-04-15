
print('How many pokemons you need? ')
quantity = gets.chomp.to_i

def create_pokemons(quantity)
  pokemons = []
  quantity.times do
    # print('Enter pokemons name: ')
    name = gets.chomp
    # print('Enter pokemons color: ')
    color = gets.chomp
    pokemons.push({ 'name': name, 'color': color })
  end
  pokemons
end

puts create_pokemons(quantity)
