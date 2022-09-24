def to_hex(r, g, b)
  #'#' +
    #r.to_s(16).rjust(2, '0') +
    #g.to_s(16).rjust(2, '0') +
    #b.to_s(16).rjust(2, '0')
  ###上記コードをリファクタリング
  #hex = '#'
  #[r, g ,b].each do |n|
  #  hex += n.to_s(16).rjust(2, '0')
  #end
  #hex
  ###さらにリファクタリング
  [r, g, b].sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  #r = hex[1..2]
  #g = hex[3..4]
  #b = hex[5..6]
  #ints = []
  #[r, g, b].each do |s|
  #  ints << s.hex
  #end
  #ints

  ###リファクタリング
  #r = hex[1..2]
  #g = hex[3..4]
  #b = hex[5..6]
  #[r, g, b].map do |s|
  #  s.hex
  #end

  ###リファクタリング
  #r, g, b = hex[1..2], hex[3..4], hex[5..6] #多重代入
  #[r, g, b].map do |s|
  #  s.hex
  #end

  ###リファクタリング
  #hex.scan(/\w\w/).map do |s|
  #  s.hex
  #end

  ###リファクタリング
  hex.scan(/\w\w/).map(&:hex)
end

#p to_ints('#043c78')