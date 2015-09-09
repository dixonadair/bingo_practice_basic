require 'gon'
require 'json'

class BingoboardController < ApplicationController
	include BingoboardHelper
	def index
		board1 = JSON.parse(Bingoboard.find(1).tags)
		board2 = JSON.parse(Bingoboard.find(2).tags)
		gon.board1 = board1
		gon.board2 = board2
	end

	def check_bingo
		board1 = JSON.parse(Bingoboard.find(1).tags)
		board2 = JSON.parse(Bingoboard.find(2).tags)

		response = nil
		# answer = []
		answer = check(board1)
		if answer[0] == "B" || answer[0] == "I" || answer[0] == "N" || answer[0] == "G" || answer[0] == "O"
			response = {letter: answer[0], number: answer[1]}
		else
			response = {column: answer[0], row: answer[1]}
		end
		render json: response
	end

end