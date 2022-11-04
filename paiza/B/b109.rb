#最初の初期値を受け取る
n, _h, _w, p, q = gets.split(' ')

reserved_seat = []
k = []
for _i in 1..n.to_i do
    f = gets.split(' ')
    f.each do |f|
        k << f.to_i
    end
    reserved_seat << k
    k = []
end

#空席の配列用
vacant_seat = []

#空席の配列を作る
#縦席
for pp in 0..3 do
    #横席
    for qq in 0..4 do
        unless reserved_seat.include?([pp, qq])
            vacant_seat << [pp, qq]
        end
    end
end

m_distance = []

#空席のマンハッタン距離の配列
vacant_seat.each do |v|
    m_distance << (v[0] - p.to_i).abs + (v[1] - q.to_i).abs
end

c = 0
m_distance.each do |m|
    if m == m_distance.min
        puts vacant_seat[c][0].to_s + " " + vacant_seat[c][1].to_s
    end
    c += 1
end