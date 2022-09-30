i = 1
n = 0
for i in 1..101 do
  if i.odd?
    n = n + i * i * i
  end
  i += 1
end

puts n