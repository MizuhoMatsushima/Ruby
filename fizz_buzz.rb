a = []
for _i in 1..5 do
  a << gets.to_i
end

a.each do |a|
  if a % 15 == 0
    puts "FizzBuzz"
  elsif a % 5 == 0
    puts "Buzz"
  elsif a % 3 == 0
    puts "Fizz"
  else
    puts a
  end
end