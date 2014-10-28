require 'spec_helper'

describe "Array basics, part 3" do
  let(:___) { nil }
  let(:dogs) {
    ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]
  }

  it "returns a count of the number of dogs" do
    dog_count = ___
    expect(dog_count).to be == 6
  end

  xit "returns an array of the lengths of each dog name" do
    dog_name_counts = ___
    expect(dog_name_counts).to be == [4, 8, 4, 6, 4, 7]
  end

  xit "returns each of the names reversed" do
    dog_names_reversed = ___
    expect(dog_names_reversed).to be == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"]
  end

  xit "returns the first three names" do
    first_three = ___
    expect(first_three).to be == ["Fido", "Harleigh", "Mali"]
  end

  xit "returns a reversed case of the dog names" do
    dog_names_reverse_cased = ___
    expect(dog_names_reverse_cased).to be == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"]
  end

  xit "returns a sum of the lengths of each of the names" do
    sum_of_name_lengths = ___
    expect(sum_of_name_lengths).to be == 33
  end

  xit "returns all the dogs whose names are longer that 4 characters" do
    long_names = ___
    expect(long_names).to be == ["Harleigh", "Trixie", "Victory"]
  end
end
