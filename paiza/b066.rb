#1行目を取得（空白区切りで配列にする
xnm = gets.split(' ')
xnm_i = []

#取得した1行目を文字列から数値の配列へ変換
xnm.each do |xnm|
    xnm_i << xnm.to_i
end

puzzle = []
for i in 1..xnm_i[1] do
    puzzle << gets.chomp.chars
end

puzzle_pe = []
n_m = (xnm_i[1]*xnm_i[1]) / (xnm_i[2] * xnm_i[2])

n = xnm_i[2]
for i in 1..n_m do
    for t in (n - xnm_i[2])..(n - 1) do
        puzzle_pe << puzzle[i-1][i-1..n-1] + puzzle[i][i-1..n-1]
        pp puzzle_pe
        n += xnm_i[2]
        i += xnm_i[2]
    end
end


by = xnm_i[1] * xnm_i[2]
peace = []
for i in 1..by do
    peace << gets.chomp.chars
end



pp puzzle_pe
#pp peace