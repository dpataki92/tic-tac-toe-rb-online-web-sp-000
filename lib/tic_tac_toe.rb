# stores the winning combinations in an array
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,4,8], #diagonal from zero
  [2,4,6], #diagonal from two
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8] #right column
]

# displays the current state of the board
def display_board(board)
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  line = "-----------"

  puts row1
  puts line
  puts row2
  puts line
  puts row3

end

# converts user input to an index value
def input_to_index(input)
  num = input.to_i - 1
  num
end

# updates the board array with the value of the user's move
def move(arr, i, char)
  arr[i] = char
  arr
end

# checks if the chosen position on the board is occupied
def position_taken?(board, i)
  if board[i] == " " || board[i] == "" || board[i] == nil
    return false
  elsif board[i] == 'X' || board[i] == 'O'
    return true
  end
end


# checks if the user's move is valid meaning it is present on the game board and not already filled with a token
def valid_move?(board, i)
  if position_taken?(board, i) == false && i.between?(0,8) == true
    return true
  else
    return false
  end
end
