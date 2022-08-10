require_relative 'crud'
users = [
    { username: "Paco", password: "Password1"},
    { username: "Luna", password: "Password2"},
]

hashed_users = Crud.create_secure_users(users)

puts hashed_users