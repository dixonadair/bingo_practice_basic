require 'rails_helper'
require 'spec_helper'
require 'json'

describe Bingoboard do
	it "should have win condition equal false" do
		board = Bingoboard.new
		board.win.should == false
	end

	it "should have array of length 5" do
		board = Bingoboard.new(tags: Array.new(5) { Array.new(5) { |i| i = rand(100)+1 } } )
		JSON.parse(board.tags).length.should == 5
	end
end