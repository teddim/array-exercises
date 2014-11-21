require 'spec_helper'

describe "Tic Tac Toe, in arrays" do
  let(:___) { nil }

  let(:data) {
    [
      ['X', 'O', 'O'],
      ['X', 'X', 'O'],
      ['O', 'X', 'O']
    ]
  }

  describe "counting usage per row" do
    it "returns how many times X was played in each row" do
      xs_per_row = data.map do |row|
        xs = row.select {|r| r == 'X' }
        x_count = xs.length
      end

      expect(xs_per_row).to be == [1, 2, 1]
    end

    it "returns how many times O was played in each row" do
      os_per_row = data.map do |row|
        os = row.select {|r| r == 'O' }
        o_count = os.length
      end
      expect(os_per_row).to be == [2, 1, 2]
    end
  end

  describe "getting coordinates of usage" do
    xit "returns an array of [row, column] array coordinates for each usage of X" do
      x_coordinates = ___
      expect(x_coordinates).to be == [[0, 0], [1, 0], [1, 1], [2, 1]]
    end

    xit "returns an array of [row, column] array coordinates for each usage of O" do
      o_coordinates = ___
      expect(o_coordinates).to be == [[0, 1], [0, 2], [1, 2], [2, 0], [2, 2]]
    end
  end

  describe "testing who won" do
    xit "determines whether X or O won" do
      winner = ___
      expect(winner).to be == 'O'
    end
  end
end
