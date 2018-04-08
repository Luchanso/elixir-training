# functions
add = fn a, b ->
  a + b
end

IO.puts add.(1, 2) # 3

IO.puts is_function(add) # true
IO.puts is_function(add, 2) # function have two arguments?

double = fn a -> add.(a, a) end
IO.puts double.(128)

x = 42
(fn -> x = 0 end).()
IO.puts x # 42

[1, 2, true, 3] # linked or List
IO.puts length [1, 2, 3] # 3
[1, 2, 3] ++ [4, 5, 6] # [1, 2, 3, 4, 5, 6]
[1, true, 2, false, 3, true] -- [true, false] # [1, 2, 3, true]
