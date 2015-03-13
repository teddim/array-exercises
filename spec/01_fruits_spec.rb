require 'spec_helper'

describe 'Array basics' do
  let(:___) { nil }
  let(:fruit) { ['apples', 'oranges', 'bananas', 'pomegranates', 'grapes'] }

  it "can report its length" do
    fruit_length = fruit.length
    expect( fruit_length ).to be == 5
  end

  it "can report the index of the string 'banana'" do
    banana_index = fruit.index('bananas')
    expect( banana_index ).to be == 2
  end

  it "can create a new array where 'raspberries' is between apples and oranges" do
    # dup returns the array without affecting it, then insert into the the array at the index you put
    new_array = fruit.dup.insert(1,"raspberries")
    expect( new_array ).to be == ['apples', 'raspberries', 'oranges', 'bananas', 'pomegranates', 'grapes']
    # the fruit array should not be altered
    expect(fruit.count).to be == 5
  end

  it "can report the length of each string in the array" do
    lengths = fruit.map { |f| f.length }
    expect( lengths ).to be == [6, 7, 7, 12, 6]
  end

  it "can create a new array where all the fruit capitalized" do
    new_array = fruit.map { |f| f.upcase }
    #alt solution
    #new_array = fruit.map(&:upcase)
    expect( new_array ).to be == ["APPLES", "ORANGES", "BANANAS", "POMEGRANATES", "GRAPES"]
  end

  it "can create a new array that returns only fruits containing a 'g'" do
    new_array = fruit.select {|f| f.include?("g")}
    # new_array = fruit.keep_if { |f| f =~ /g/}
    expect( new_array ).to be == ["oranges", "pomegranates", "grapes"]
  end
end
