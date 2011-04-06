require 'spec_helper'
require 'ascii_tic_tac_toe'

describe AsciiTicTacToe do
  describe "new" do
    it "should instantiate" do
      lambda {
        AsciiTicTacToe.new
      }.should_not raise_exception
    end
  end

  describe 'at' do
    it 'should throw an exception for indexes not in 1..3 inclusive' do
      lambda {
        AsciiTicTacToe.new.at(1,1)
        AsciiTicTacToe.new.at(2,2)
        AsciiTicTacToe.new.at(3,3)
        AsciiTicTacToe.new.at(1,3)
        AsciiTicTacToe.new.at(3,1)
      }.should_not raise_exception
    end
  end
end
