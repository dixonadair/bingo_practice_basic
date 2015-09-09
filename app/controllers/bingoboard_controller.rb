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

		response = {}
		# answer = []
		answer1 = check(board1)
		answer2 = check(board2)
		if answer1[0] == "B" || answer1[0] == "I" || answer1[0] == "N" || answer1[0] == "G" || answer1[0] == "O"
			response["first"] = {letter: answer1[0], number: answer1[1]}
		else
			response["first"] = {column: answer1[0], row: answer1[1]}
		end

		if answer2[0] == "B" || answer2[0] == "I" || answer2[0] == "N" || answer2[0] == "G" || answer2[0] == "O"
			response["second"] = {letter: answer2[0], number: answer2[1]}
		else
			response["second"] = {column: answer2[0], row: answer2[1]}
		end
		render json: response
	end

end