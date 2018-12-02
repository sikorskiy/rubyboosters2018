class Person
  attr_accessor :name, :lastname, :age

  def initialize(name = 'No name provided', last_name = 'No lastname provided', age = 16)
    @name, @lastname, @age = name, lastname, age
  end

end

class Game
  START_POSITIONS = ['rook', 'knight', 'bishop', 'queen', 'king', 'bishop', 'knight', 'rook']
  attr_reader :board, :white_player, :black_player, :current_player

  def initialize(white_player, black_player)
    @board = []
    ('a'..'h').each do |i|
      @board[0][i.ord-'a'.ord] = Square.new(i + '1',START_POSITIONS[i.ord-'a'.ord],'white')
      @board[7][i.ord-'a'.ord] = Square.new(i + '8',START_POSITIONS[i.ord-'a'.ord],'black')
      @board[1][i.ord-'a'.ord] = Square.new(i + '2', 'pawn','white')
      @board[6][i.ord-'a'.ord] = Square.new(i + '7','pawn','black')
      (3..6).each { |j| @board[j-1][i.ord-'a'.ord] = Square.new(i+j.to_s,) }

    end
    @white_player = white_player
    @black_player = black_player
    @start_time = Time.now
    @current_player = @white_player

  end

  def whose_move
    @current_player
  end

end

class Square
  attr_accessor :position, :piece, :piece_color

  def initialize(position, piece = nil, piece_color = nil)
    @position = position #check the notation
    @piece = piece if ['bishop', 'rook', 'queen', 'queen', 'knight', 'pawn', 'king'].include?(piece.downcase)
    @piece_color = ['white', 'black'].include?(piece_color) ? piece_color : 'white'
  end

end

class Player < Person
  attr_reader :id, :status
  def initialize
    @games = []
    @id = 1 # should make some unique id
  end

  def game_start(rival_id)
    @color = :white #it should be some procedure for it
    @games << Game.new(@id, rival_id)
    @status = 'In game' #may be it should be the separate class GameStatus
    @games.last
  end

  def registration
    # server request for validation
  end

  def ready_to_start
    # server request for opponents
  end

  def wait_for_move
    # wait for movement from any game
  end

  def move(game, from_square, to_square)
    game.move(from_square, to_square)
  end

  def send_message(player_id, game_id)
    # sends message to server with move, draw, text and so on
  end

  def my_move?(game)
    game.whose_move == @id
  end

end


v = Player.new
v.game_start(2)
puts v.status
