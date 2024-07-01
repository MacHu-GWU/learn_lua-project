local serpent = require("serpent")

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
print(serpent.block(person))

local person_list = {
    { name = "Alice", age = 30 },
    { name = "Bob", age = 25 },
    { name = "Charlie", age = 35 }
}
print(serpent.block(person_list))
