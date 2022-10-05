abc = [:A, :B, :C, :D, :E, :F, :J, :K, :Q, :T, :V, :W, :X, :Y, :Z]

abc_5 = abc.repeated_permutation(5).to_a

cba = []

abc_5.each do |abc|
  if abc.include?(:A) && abc.include?(:E) && abc.include?(:T)
    unless abc[1] == :A || abc[1] == :T || abc[3] == :E
      cba << abc
    end
  end
end

p cba.size