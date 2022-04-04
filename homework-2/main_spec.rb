require 'rspec'
require './task'
require './foobar'

RSpec.describe 'Main' do
  it 'greeting for age 18 and more' do
    expect(greeting('Игорь', 'Козачук', 19)).to eq('Привет, Игорь Козачук. Самое время заняться делом!')
  end
  it 'greeting for age less 18' do
    expect(greeting('Игорь', 'Козачук',
                    17)).to eq('Привет, Игорь Козачук. Тебе меньше 18 лет, но начать программировать никогда не рано')
  end
end

RSpec.describe 'Main' do
  it 'foobar for 20 in a' do
    expect(foobar(20, 2)).to eq(2)
  end
  it 'foobar for 20 in b' do
    expect(foobar(5, 20)).to eq(20)
  end
  it 'foobar for 20 not in a and b' do
    expect(foobar(3, 5)).to eq(8)
  end
end
