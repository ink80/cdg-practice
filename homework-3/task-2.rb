def create_pokemons
  pokemons = []
  print('How many pokemons you need? ')
  quantity = gets.chomp.to_i

  quantity.times do
    print('Enter pokemons name: ')
    name = gets.chomp
    print('Enter pokemons color: ')
    color = gets.chomp
    pokemons.push({ 'name' => name, 'color' => color })
  end
  puts("Congratulations! You create this pokemons: #{pokemons}")
end

puts create_pokemons
