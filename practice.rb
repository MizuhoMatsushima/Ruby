puts 'Hello,World!'

for i in 1..15 do
  if i % 3 == 0 and i % 5 == 0
    puts 'FizzBuzz'
  elsif i % 3 == 0
    puts 'Fizz'
  elsif i % 5 == 0
    puts 'Buzz'
  else
    puts i.to_s
  end
end
