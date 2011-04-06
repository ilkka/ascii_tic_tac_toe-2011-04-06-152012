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
        (1..3).each do |row|
          (1..3).each do |col|
            AsciiTicTacToe.new.at(row, col)
          end
        end
      }.should_not raise_exception
    end

    it 'should return empty spaces for all positions in the beginning' do
      (1..3).each do |row|
        (1..3).each do |col|
          AsciiTicTacToe.new.at(row, col).should == ' '
        end
      end
    end
  end
end
