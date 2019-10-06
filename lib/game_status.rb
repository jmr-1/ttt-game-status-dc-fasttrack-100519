# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  #check rows
  [0,1,2], 
  [3,4,5],
  [6,7,8],
  #check diagonals
  [0,4,8],
  [2,4,6],
  #check columns
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

#checks for winning WIN_COMBINATIONS

def won?(board)
  #checks against WIN_COMBINATIONS
  WIN_COMBINATIONS.length.times do |index|
    wincheck = []
    wincheck = WIN_COMBINATIONS[index]
    print wincheck
    puts "***"
    if board[wincheck[0]] == "X" && board[wincheck[1]] =="X" && board[wincheck[2]] == "X"
      puts "X has won at #{wincheck[index]}"
      return WIN_COMBINATIONS[index]
      return X 
    elsif board[wincheck[0]] == "O" && board[wincheck[1]] =="O" && board[wincheck[2]] == "O"
      puts "O has won at #{wincheck[index]}"
      return WIN_COMBINATIONS[index]
      return O
    end 
    end   
  end