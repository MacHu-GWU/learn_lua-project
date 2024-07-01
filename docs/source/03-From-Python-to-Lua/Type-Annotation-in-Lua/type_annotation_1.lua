---@meta
---@diagnostic disable: undefined-global
---@diagnostic disable: lowercase-global

--[[----------------------------------------------------------------------------
标注一个变量
--]]----------------------------------------------------------------------------
---type annotation 要在声明的前一行
---@type number
local a_number = 1
print(string.format("a_number = %s", a_number))

---如果你要加一些描述, 直接在类型后面空格开始写即可
---@type string your description here
local a_string = "Alice"
print(string.format("a_string = %s", a_string))

---@type boolean
local a_boolean = true
print(string.format("a_boolean = %s", a_boolean))

--[[----------------------------------------------------------------------------
标注一个容器类型的 Table
--]]----------------------------------------------------------------------------
---@type table
local a_list = { 1, 2, 3 }
print(string.format("a_list = %s", a_list))

---@type table
local a_dict = { a = 1, b = 2, c = 3 }
print(string.format("a_dict = %s", a_dict))

---@type number[]
local a_list_of_number = { 1, 2, 3 }
print(string.format("a_list_of_number = %s", a_list_of_number))

---@type table<string, number>
local a_dict_of_string_and_number = { a = 1, b = 2, c = 3 }
print(string.format("a_dict_of_string_and_number = %s", a_dict_of_string_and_number))

--[[----------------------------------------------------------------------------
标注一个结构体类型的 Table
--]]----------------------------------------------------------------------------
---@class Person
---@field name string The person's name
---@field dob string Date of birth in string format
---@field age number The person's age
---@field occupation? string The person's occupation (optional)
---@field hobbies? string[] A list of the person's hobbies (optional)
local person = {
    name = "John Doe",
    dob = "1990-01-01",
    age = 33,
    occupation = "Engineer",
    hobbies = { "reading", "swimming" }
}
print(string.format("person = %s", person))

---@type Person[]
local person_list = {
    {
        name = "John Doe",
        dob = "1990-01-01",
        age = 33,
        occupation = "Engineer",
        hobbies = { "reading", "swimming" },
        wrong_attribute = 123 -- 貌似 IDE 无法发现这里的错误
    },
    {
        name = "Alice",
        dob = "1990-01-01",
        age = 33,
        occupation = "Engineer",
        hobbies = { "reading", "swimming" }
    }
}
print(string.format("person_list = %s", person_list))

--[[----------------------------------------------------------------------------
使用 Alias

在上面的例子中我们定义了一个 Person 类型, 之后就可以用 Person[] 来标注一个 Person 类型的数组.
但是公布时每个类型都是一个 class, 对于不是 class 的任何比较复杂的类型, 我们都可以用一个 alias 来简化.
例如上面这个 Person 的例子等效于下面这个例子:
--]]----------------------------------------------------------------------------
---@alias AnotherPerson
---@field name string The person's name
---@field dob string Date of birth in string format
---@field age number The person's age
---@field occupation? string The person's occupation (optional)
---@field hobbies? string[] A list of the person's hobbies (optional)

---@type AnotherPerson[]
local another_person_list = {
    {
        name = "John Doe",
        dob = "1990-01-01",
        age = 33,
        occupation = "Engineer",
        hobbies = { "reading", "swimming" },
        wrong_attribute = 123 -- 貌似 IDE 无法发现这里的错误
    },
    {
        name = "Alice",
        dob = "1990-01-01",
        age = 33,
        occupation = "Engineer",
        hobbies = { "reading", "swimming" }
    }
}
print(string.format("another_person_list = %s", another_person_list))

--[[----------------------------------------------------------------------------
标注一个函数
--]]----------------------------------------------------------------------------
---注: 这是最常见的声明函数的方法
---@param x number description here
---@param y number description here
---@return number description here
local function add_two_value_v1(x, y)
    return x + y
end
print(string.format("res = %s", add_two_value_v1(1, 2)))

---注: 这种声明方式本质上是创建了个匿名函数并赋值给了一个变量, 不太推荐使用
---@type fun(x: number, y: number): number
local add_two_value_v2 = function(x, y)
    return x + y
end
print(string.format("res = %s", add_two_value_v2(1, 2)))