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

# List operators never modify the existing list
list = [1, 2, 3]
IO.puts hd(list) # head of list - 1
tl(list) # tail of list - 2, 3
'hello' == "hello" # false, because difference types

# tuples
IO.puts tuple_size {:ok, "hello"} # 2

tuple = {:ok, "hello"}
IO.puts elem(tuple, 1) # hello
IO.puts elem(put_elem(tuple, 1, "world"), 1) # world
IO.puts elem(tuple, 1) # hello

# What is the difference between lists and tuples?

# Lists are stored in memory as linked lists,
# meaning that each element in a list holds
# its value and points to the following element until
# the end of the list is reached. This means accessing
# the length of a list is a linear operation: we need
# to traverse the whole list in order to figure out its size.

list = [1, 2, 3]

# This is fast as we only need to traverse `[0]` to prepend to `list`
[0] ++ list
# [0, 1, 2, 3]

# This is slow as we need to traverse `list` to append 4
list ++ [4]
# [1, 2, 3, 4]

# Tuples, on the other hand, are stored contiguously in memory.
# This means getting the tuple size or accessing an element by index
# is fast. However, updating or adding elements to tuples
# is expensive because it requires creating a new tuple in memory:

# Note that this applies only to the tuple itself, not its contents.
# For instance, when you update a tuple, all entries are shared between
# the old and the new tuple, except for the entry that has been replaced.
# In other words, tuples and lists in Elixir are capable of sharing their contents.
# This reduces the amount of memory allocation the language needs to perform and
# is only possible thanks to the immutable semantics of the language.

# Those performance characteristics dictate the usage of those data structures.
# One very common use case for tuples is to use them to return extra information from a function.
# For example, File.read/1 is a function that can be used to read file contents. It returns a tuple:

file = File.read("example.file")
IO.puts "=== File content ==="
IO.puts elem(file, 1)
IO.puts "=== File content end ==="
