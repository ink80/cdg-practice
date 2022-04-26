require 'rspec'
require './task-1'


RSpec.describe 'Main' do
  it 'index' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('testCS')

    expect(process_word('testCS')).to eq(64)
  end
end
