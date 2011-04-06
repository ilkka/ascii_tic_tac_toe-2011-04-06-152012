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
    it 'should accept indexes in 1..3 inclusive' do
      lambda {
        (1..3).each do |row|
          (1..3).each do |col|
            AsciiTicTacToe.new.at(row, col)
          end
        end
      }.should_not raise_exception
    end

    it 'should not accept indexes not in 1..3 inclusive' do
      lambda {
        AsciiTicTacToe.new.at(0, 1)
      }.should raise_exception
      lambda {
        AsciiTicTacToe.new.at(2, 4)
      }.should raise_exception
      lambda {
        AsciiTicTacToe.new.at(3, -1)
      }.should raise_exception
    end

    it 'should return empty spaces for all positions in the beginning' do
      (1..3).each do |row|
        (1..3).each do |col|
          AsciiTicTacToe.new.at(row, col).should == ' '
        end
      end
    end
  end

  describe 'move' do
    it 'should take row, col and piece parameters' do
      lambda {
        AsciiTicTacToe.new.move(1,1,'x')
      }.should_not raise_exception
    end

    it 'should place the given piece on the board' do
      a = AsciiTicTacToe.new
      a.move(1, 1, 'x')
      a.at(1, 1).should == 'x'
    end

    it 'should reject moves that are outside the grid' do
      lambda {
        AsciiTicTacToe.new.move(4, 4, 'x')
      }.should raise_error
    end

    it 'should reject moves that use invalid pieces' do
      lambda {
        AsciiTicTacToe.new.move(1, 2, 'p')
      }.should raise_error
    end
  end
end
