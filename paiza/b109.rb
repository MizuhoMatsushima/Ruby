nhwpq = gets.split(' ')
nhwpq_int = []
nhwpq.each do |n|
    nhwpq_int << n.to_i
end

reserved_seat = []
k = []
for i in 1..nhwpq_int[0] do
    f = gets.split(' ')
    f.each do |f|
        k << f.to_i
    end
    reserved_seat << k
    k = []
end

vacant_seat = []#空席の配列用

#空席の配列を作る
#縦席
for p in 0..3 do
    #横席
    for q in 0..4 do
        unless reserved_seat.include?([p, q])
            vacant_seat << [p, q]
        end
    end
end

m_distance = []

#空席のマンハッタン距離の配列
vacant_seat.each do |v|
    m_distance << (v[0] - nhwpq_int[3]).abs + (v[1] - nhwpq_int[4]).abs
end

c = 0
m_distance.each do |m|
    if m == m_distance.min
        puts vacant_seat[c][0].to_s + " " + vacant_seat[c][1].to_s
    end
    c += 1
end