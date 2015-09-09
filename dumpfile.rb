# # U2.W5: A Nested Array to Model a Bingo Board SOLO CHALLENGE


# # Release 0: Pseudocode
# # Outline:

# # Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#   #fill in the outline here

# # Check the called column for the number called.
#   #fill in the outline here

# # If the number is in the column, replace with an 'x'
#   #fill in the outline here

# # Display a column to the console
#   #fill in the outline here

# # Display the board to the console (prettily)
#   #fill in the outline here

# ###############BRAINSTORMING###############

# class BingoBoard

#     def initialize
#         @bingo_board = Array.new(5) {Array(5.times.map{rand(100)+1})}
#         @bingo_board[1][1] = 5 # set equal to 5 as a test
#         bingo = %w[B I N G O]
#         @letter = bingo[rand(5)]
#         @number = rand(100)+1
#         # @number = 5 # set equal to 5 as test
#         @letter_and_number = @letter.to_s + @number.to_s
#         @column = 1
#     end
    
#     def checker
#         if @letter == "B"
#             @column = 0
#         elsif @letter == "I"
#             @column = 1
#         elsif @letter == "N"
#             @column = 2
#         elsif @letter == "G"
#             @column = 3
#         elsif @letter == "O"
#             @column = 4
#         end
        
#         @column = 1 # set equal to 1 as test
#         for i in 0..4
#             if @bingo_board[i][column].detect { |x| x == @number } != nil
#                 @bingo_board[i][column] = "X"
#                 break
#             end
#             break
#         end
#         return @bingo_board
#     end

# end

# my_board = BingoBoard.new

# # Array.new(5) {Array(5.times.map {rand(100)+1})}

# my_board = BingoBoard.new

# ####More Brainstorming####

# class BingoBoard

#     def initialize
#         @bingo_board = Array.new(5) {Array(5.times.map{rand(100)})}
#         @bingo_board[0][3] = 5
        
#         bingo = %w[B I N G O]
#         bingo = bingo.shuffle!
#         @number = bingo[0].to_s + rand(100).to_s
#         puts @number.split(//).to_a[0]
#     end
    
#     def checker
#         column = @number.split(//).to_a[0]
#         if column == B
#             column = 0
#         elsif column == I
#             column = 1
#         elsif column == N
#             column = 2
#         elsif column == G
#             column = 3
#         elsif column == O
#             column = 4
#         end
        
#         @number = @number.delete_at(0)
#         @number = 5
#         for i in 0..4
#             if my_board[i][column].detect { |i| i == @number } != nil
#                 result = my_board[i].find_index { |i| i == @number }
#                 my_board[result] = "X"
#             end
#         end
#         return my_board
#     end
    

# end

# my_board = BingoBoard.new

# ###############BRAINSTORMING###############

# # Release 1: Initial Solution

# class BingoBoard

#   def initialize
#     # populates an 5x5 array with numbers 1-100
#     # to make this accessible across your methods within this class, I made
#     # this an instance variable. @ = instance variable
#     @bingo_board = Array.new(5) {Array(5.times.map{rand(1..100)})}
#   end


# end

# # Release 3: Refactored Solution

# class BingoBoard

#     def initialize
#         @bingo_board = Array.new(5) {Array(5.times.map{rand(100)+1})}
#         @@bingo = %w[B I N G O]
#     end
    
#     def checker
#         @letter = @@bingo[rand(5)]
#         @number = rand(100)+1
#         @letter_and_number = @letter.to_s + @number.to_s
#         puts @letter_and_number
        
#         if @letter == "B"
#             @column = 0
#         elsif @letter == "I"
#             @column = 1
#         elsif @letter == "N"
#             @column = 2
#         elsif @letter == "G"
#             @column = 3
#         elsif @letter == "O"
#             @column = 4
#         end

#         for i in 0..4
#             if @bingo_board[i][@column] == @number
#                 @bingo_board[i][@column] = "X"
#             end
#         end
        
#         return @bingo_board
#     end

# end

# my_board = BingoBoard.new

# # Release 2: DRIVER TESTS GO BELOW THIS LINE



# # Release 4: Reflection

# # This challenge took me quite a long time as there were several steps at which I stumbled and
# # couldn't figure out why the code wasn't working.
