function print_table(t, indent)
    indent = indent or ""
    for k, v in pairs(t) do
        if type(v) == "table" then
            print(indent .. tostring(k) .. ":")
            print_table(v, indent .. "  ")
        else
            print(indent .. tostring(k) .. ": " .. tostring(v))
        end
    end
end

local person = {
    name = "John Doe",
    age = 30,
    hobbies = {"reading", "swimming"},
    address = {
        street = "123 Main St",
        city = "Anytown"
    },
    children = {
        alice = {
            name = "Alice",
            age = 5
        },
        bob = {
            name = "Bob",
            age = 8
        }
    }
}
print("==================== person ====================")
print_table(person)

local person_list = {
    { name = "Alice", age = 30 },
    { name = "Bob", age = 25 },
    { name = "Charlie", age = 35 }
}
print("==================== person_list ====================")
print_table(person_list)
