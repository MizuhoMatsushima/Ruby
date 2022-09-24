foods = ['ピーマン', 'トマト', 'セロリ']

count = 0
foods.each do |food|
  print "#{food}は好きですか？　=>"
  answer = ['はい', 'いいえ'].sample
  puts answer

  count += 1
  #やり直し処理（はいが出るまでやり直す）
  redo if answer != 'はい' && count < 3
  count = 0
end