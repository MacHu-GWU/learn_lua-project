#!/usr/bin/env lua

a = 1 -- global variable
function func1()
    a = 2 -- you can change the value of global variable inside of a function
    print(string.format("inside function a = %s", a)) -- should be 2
end
func1()
print(string.format("outside function a = %s", a)) -- should be 2


b = 1
function func2()
    local b = 2 -- this is NOT the global variable b
    print(string.format("inside function b = %s", b)) -- should be 2
end
func2()
print(string.format("outside function b = %s", b)) -- should be 1


local c = 1
function func3()
    c = 2 -- this is the global variable c
    print(string.format("inside function c = %s", c)) -- should be 2
end
func3()
print(string.format("outside function c = %s", c)) -- should be 2, the local c got overwritten


local d = 1
function func4()
    local d = 2 -- this is local variable d
    print(string.format("inside function d = %s", d)) -- should be 2
end
func4()
print(string.format("outside function d = %s", d)) -- should be 1
