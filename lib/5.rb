puts "変換したい長さの数値を入力してください："
get_length = gets.chomp
puts "変換前の長さの単位を入力してください（m, ft, in）："
get_before_unit = gets.chomp
puts "変換後の長さの単位を入力してください（m, ft, in）："
get_after_unit = gets.chomp

input_info = {}
input_info[:length] = get_length
input_info[:before_unit] = get_before_unit
input_info[:after_unit] = get_after_unit

if 