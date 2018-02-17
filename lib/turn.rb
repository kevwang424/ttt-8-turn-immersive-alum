def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board,i)
  if i < 0
    return false
  elsif board[i].strip.empty? && i < board.length
    return true
  else
    return false
  end
end

def move(board, i, token = "X")
  board[i] = token
  return display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.chomp
  index = input_to_index(number)

  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
end
