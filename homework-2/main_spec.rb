require 'rspec'
require './task.rb'

RSpec.describe "Main" do
  it "greeting for age 18 and more" do
    expect(greeting("Игорь", "Козачук", 19)).to eq("Привет, Игорь Козачук. Самое время заняться делом!")
  end
  it "greeting for age less 18" do
    expect(greeting("Игорь", "Козачук", 17)).to eq("Привет, Игорь Козачук. Тебе меньше 18 лет, но начать программировать никогда не рано")
  end
end
