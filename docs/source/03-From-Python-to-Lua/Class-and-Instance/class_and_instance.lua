-- Person 类
local Person = {}
Person.__index = Person

function Person:new(name)
    local instance = setmetatable({}, Person)
    instance.name = name
    return instance
end

function Person:greeting()
    print("Hello, my name is " .. self.name)
end

-- Student 类，继承自 Person
local Student = {}
Student.__index = Student
setmetatable(Student, {__index = Person})  -- 这一行实现了继承

function Student:new(name, grade)
    local instance = Person:new(name)  -- 调用 Person 的构造函数
    setmetatable(instance, Student)    -- 将实例的元表设置为 Student
    instance.grade = grade             -- 添加 Student 特有的属性
    return instance
end

function Student:study()
    print(self.name .. " is studying in grade " .. self.grade)
end

-- 创建实例并使用
local person = Person:new("Alice")
person:greeting()  -- 输出: Hello, my name is Alice

local student = Student:new("Bob", 10)
student:greeting()  -- 输出: Hello, my name is Bob（继承自 Person 的方法）
student:study()      -- 输出: Bob is studying in grade 10
