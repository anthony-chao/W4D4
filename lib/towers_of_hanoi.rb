class Game
  attr_reader :size
  def initialize(size)
    @board = Array.new(3) { Array.new}
    i = size
    while i > 0
      @board[0] << i
      i -= 1
    end
  end

  def gets_move
    puts "enter the index for the pile you want to remove disc from
    followed by the index for the pile you want to move the disc to"
    user_input = gets.chomp.split.map(&:to_i)
    raise "error" if user_input.length != 2
    raise "out of place index" if !user_input.all? { |idx| idx >=0 && idx < 3}
    user_input
  end

  # def[](pos)
  #   row, col = pos 
  #   @board[row][col]
  # end

  # def[]=(pos,val)
  #    row, col = pos 
  #   @board[row][col] = val
  # end


  def move 
    pos = gets_move

    if !@board[pos.first].empty?
    disk = @board[pos.first].pop
    end
    if @board[pos.last].empty?
      @board[pos.last].push(disk)
    elsif @board[pos.first].last > disk 
      @board[pos.last].push(disk)
    else  
      pos = gets_move
  end
end