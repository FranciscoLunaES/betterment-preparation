require_relative 'crud'

class Student
    include Crud
    attr_accessor :first_name, :last_name, :email, :username, :password

    def initialize(first_name, last_name, email, username, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
        @password = password
    end

    def to_s
        "First name"
    end

end

paco = Student.new("paco", "luna", "pakoo_15@hotmail.com","Pc", "pass")
hashed_password = paco.create_hash_digest(paco.password)

puts hashed_password