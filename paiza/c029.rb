s, e = gets.split(' ')

day = []
rainy_percent = []

for _i in 1..s.to_i do
    d, r = gets.split(' ')
    day << d.to_i
    rainy_percent << r.to_i
end

average = []
for i in 1..(s.to_i - e.to_i + 1) do
    average << (rainy_percent[i-1] + rainy_percent[i] + rainy_percent[i+1]) / e.to_i
end

average_min = average.index(average.min)
last_day = day[e.to_i - 1 + average_min]
first_day = last_day - e.to_i + 1

puts first_day.to_s + " " + last_day.to_s