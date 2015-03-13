require 'spec_helper'

describe "Array basics, part 3" do
  let(:___) { nil }
  let(:dogs) {
    ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]
  }

  it "returns a count of the number of dogs" do
    dog_count = dogs.count
    expect(dog_count).to be == 6
  end

  it "returns an array of the lengths of each dog name" do
    dog_name_counts = []
    dogs.each do |dog|
      dog_name_counts << dog.length
    end
    expect(dog_name_counts).to be == [4, 8, 4, 6, 4, 7]
  end

  it "returns each of the names reversed" do
    dog_names_reversed = []
    dogs.each do |dog|
      dog_names_reversed << dog.reverse
    end
    expect(dog_names_reversed).to be == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"]
  end

  it "returns the first three names" do
    first_three = dogs[0..2]
    expect(first_three).to be == ["Fido", "Harleigh", "Mali"]
  end

  it "returns a reversed case of the dog names" do
    dog_names_reverse_cased = []
    dogs.each do |dog|
      dog_names_reverse_cased << dog.swapcase
    end
    expect(dog_names_reverse_cased).to be == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"]
  end

  it "returns a sum of the lengths of each of the names" do
    sum_of_name_lengths = 0
    dogs.each do |dog|
      sum_of_name_lengths += dog.length
    end

    expect(sum_of_name_lengths).to be == 33
  end

  xit "returns all the dogs whose names are longer that 4 characters" do
    long_names = ___
    expect(long_names).to be == ["Harleigh", "Trixie", "Victory"]
  end
end
