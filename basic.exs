IO.puts "Hello world"

IO.puts :atom # atom
IO.puts 1.0 # float
IO.puts 2 # int
IO.puts true # bool

[1, 2, 3] # list
{1, 2, 3} # tuple

IO.puts div 10, 3 # 3
IO.puts rem 10, 3 # 1 like 10 % 3

IO.puts 0xFF00FF # support 16 radix and other
IO.puts 1.0e-10 # engeneer notation
IO.puts true == false
IO.puts is_boolean(true)
IO.puts is_integer(123)
IO.puts is_float(123.2)
IO.puts is_number(23)

:hello == :world # false

is_atom(false) # true
is_boolean(:false) # true

is_atom(Hello) # true, because a construct called aliases which we will explore later. Aliases start in upper case and are also atoms:

IO.puts "hellö #{:world}" # hellö world

IO.puts "hello
world"

IO.puts "hello\nworld\n\n"

byte_size("hellö") # 6
String.length("hellö") # 5
# String module https://hexdocs.pm/elixir/String.html
