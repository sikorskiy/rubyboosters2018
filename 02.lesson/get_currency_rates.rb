require 'net/http' #библиотека для работы с запросами к веб-страницам
require 'json' # библиотека, которая умеет парсить ответы в формате JSON

#url просто строка, которая будет содержать адрес, по которому запрашиваю текущие курсы
url = 'https://openexchangerates.org/api/latest.json?app_id=860a1665c5754f2595ea1c4c2678b411'
#из url получается специальный объект командой URI, по которому Ruby может запрашивать информацию по конкретному адресу. Ответ получает в формате JSON
response = Net::HTTP.get(URI(url))
my_rates = JSON.parse(response)['rates'] #rates - строковый хэш, который парсится из JSON
# хэш - просто структура данных, пока просто не задумывайтесь, а 
puts "Есть информация по следующим валютам: "
puts my_rates.keys.to_s #берем все возможные валюты 
print 'Из какой валюты хотели бы перевести? '
from = gets.chomp.upcase #делаем ввод большими буквами
print 'В какую валюту хотели бы перевести? '
to = gets.chomp.upcase #делаем ввод большими буквами
print 'Какую сумму хотели бы перевести? '
amount = gets.chomp.to_f
if my_rates[to] && my_rates[from] #проверяем, что в нашем хэше есть и та, и другая валюта
  new_amount = amount/my_rates[from]*my_rates[to] #приводим все к доллару и получаем новую сумму
  puts "#{amount.round(2)}#{from} это #{new_amount.round(2)}#{to}."
else
  puts 'Одной из указанных валют нет в нашем списке'
end



