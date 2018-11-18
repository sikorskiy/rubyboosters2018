class Player
  attr_accessor :name, :last_name, :age

  def initialize(name, last_name, age)
    @name = name
    @last_name = last_name
    @age = age
  end
  
  def greeting
    puts "My name is #{@name}. My lastname is #{@last_name}. I'm #{@age}. Nice to meet you"
  end

  def init_game
    puts 'Игрок готов начинать, ждет соперника'
  end

  def loose
    puts 'Игрок сдается. Окончание партии'
  end

  def suggest_draw
    puts 'Игрок предлагает ничью'
  end

  def start_move
    puts 'Игрок начинает свой ход, засекается время'
  end



  
end

a = Player.new('Vasiliy', 'Sikorskiy', 33)
a.greeting
a.name = 'John'
a.lastname = 'Malcovich'
a.age = 42
puts a.name
puts a.lastname
puts a.age
a.greeting


