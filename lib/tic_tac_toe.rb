require "pry"

class TicTacToe
  
<<<<<<< HEAD
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]
=======
  attr_accessor :index
  
  def initialize
    @board = Array.new(9, " ")
  end
  
  WIN_COMBINATIONS = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
    ]
>>>>>>> b9ee6d452d111988d2ade30e136eea8390402559
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
<<<<<<< HEAD
    input.to_i - 1
  end
  
  def move(index, token = "X")
    @board[index] = token
  end
  
  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end
  
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end
  
  def turn
    puts "Please enter a number 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(index)
      move(index, current_player)
      display_board
    else
      turn
    end
  end
  
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
=======
    @index = input.to_i - 1
    @board[@index] = @index
  end
  
  def move(index, token = "X")
      @board[index] = token
  end
  
  def position_taken?(index)
    !(position(index).nil? || position(index) == " ")
  end
  
  def valid_move?(index)
    !position_taken?(index) && index >= 0 && index <= 8
  end
  
  def turn_count
    occupied = 0
    @board.each do |space|
      if space != " "
        occupied += 1
      end
    end
    occupied
>>>>>>> b9ee6d452d111988d2ade30e136eea8390402559
  end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
<<<<<<< HEAD
  def won?
    a = WIN_COMBINATIONS.find{
      |combo|
      @board[combo[0]] == "X" && @board[combo[1]] == "X" && @board[combo[2]] == "X"
    }
    b = WIN_COMBINATIONS.find{
      |combo|
      @board[combo[0]] == "O" && @board[combo[1]] == "O" && @board[combo[2]] == "O"
    }
    return a || b
  end
  
  def full?
    !@board.any?{|x| x == "" || x == " "}
  end
  
  def draw?
    !won? && full?
  end
  
  def over?
    won? || draw?
  end
  
  def winner
    if won?
      @board[won?[0]] == "X" ? "X" : "O"
    else
      nil
    end
  end

  def play
    until over?
      turn
    end
    if won? 
      puts "Congratulations #{winner}!"
    elsif draw?
      puts "Cat's Game!"
    end
=======
  def turn
    puts "Please enter 1-9:"
    input = gets
    if valid_move?(input)
      move(input, current_player)
      display_board
    else
      turn
    end
>>>>>>> b9ee6d452d111988d2ade30e136eea8390402559
  end
end