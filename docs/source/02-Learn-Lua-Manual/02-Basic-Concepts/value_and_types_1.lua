local a_nil
print(string.format("a_nil = %s", a_nil))

local a_boolean = true
print(string.format("a_boolean = %s", a_boolean))

local a_number = 42
print(string.format("a_number = %s", a_number))

local a_string = "Hello World!"
print(string.format("a_string = %s", a_string))

local a_table = { 1, 2, 3 }
print(string.format("a_table = %s", a_table))

local a_function = function()
    print("this is a function!")
end
a_function()
