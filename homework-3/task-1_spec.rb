require 'rspec'
require './task-1'


RSpec.describe 'Main' do
  it 'word end with CS' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('testCS')

    expect(process_word('testCS')).to eq(64)
  end
  it 'word end without CS' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('abcd')

    expect(process_word('abcd')).to eq('dcba')
  end
end
