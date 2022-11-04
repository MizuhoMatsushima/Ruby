nm = gets.split(' ')

capacity = []
for _i in 1..nm[0].to_i do
    capacity << gets.to_i
end

passenger = []
for _i in 1..nm[1].to_i do
    passenger << gets.to_i
end


count = []
i = 0
passenger.each do |p|
    while p == 0 do
        if capacity[i] < p
            p = p - capacity[i]
            count[i] = count[i] + capacity[i]
        else
            count[i] = count[i] + p
            p = 0
        end
        i += 1
    end
end

pp count
