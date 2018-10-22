# для того, чтобы это корректно работало, необходимо установить гем colorize командой gem install colorize
require 'colorize'
puts 'Возможные цвета:'.on_yellow
puts String.colors # эта команда выдает массив строк всех цветов
puts 'Возможные режимы:'.black.on_white
puts String.modes # эта команда выдает массив строк со всеми возможными режимами

puts 'Тестовая строка 1'.black.on_red.bold #у строки появлются методы цвета, фона и режима
puts 'Подчеркнутый желтый цвет на синем фоне'.light_yellow.on_blue.underline

