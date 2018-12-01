# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]
  
#top_row_win = [0, 1, 2]
#middle_row_win = [3, 4, 5]
#bottom_row_win = [6, 7, 8]
#left_column_win = [0, 3, 6]
#middle_column_win = [1, 4, 7]
#right_column_win = [2, 5, 8]
#down_diag_win = [0, 4, 8]
#up_diag_win = [2, 4, 6]
  
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    wc = win_combination
    if (board[wc[0]] == "X" && board[wc[1]] == "X" && board[wc[2]] == "X") || (board[wc[0]] == "O" && board[wc[1]] == "O" && board[wc[2]] == "O")
      return wc
    else
      return false
    end
  end
end

my_board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]

puts won?(my_board)
