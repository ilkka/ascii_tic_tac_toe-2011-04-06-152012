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

  it 'should have 3 rows' do
    lambda {
      AsciiTicTacToe.new.row(1)
      AsciiTicTacToe.new.row(2)
      AsciiTicTacToe.new.row(3)
    }.should_not raise_exception
    lambda {
      AsciiTicTacToe.new.row(0)
    }.should_not raise_exception
    lambda {
      AsciiTicTacToe.new.row(4)
    }.should_not raise_exception
    lambda {
      AsciiTicTacToe.new.row(-1)
    }.should_not raise_exception
  end
end
