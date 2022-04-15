require 'rspec'
require './task-2'

RSpec.describe 'Main' do
  it 'create 2 pokemons' do
    quantity = 2
    result = [
      { name: 'wer', color: 'green' },
      { name: 'der', color: 'red' }
    ]

    allow_any_instance_of(Kernel).to receive(:gets).and_return('wer', 'green', 'der', 'red')
    expect(create_pokemons(quantity)).to eq(result)
  end
end
