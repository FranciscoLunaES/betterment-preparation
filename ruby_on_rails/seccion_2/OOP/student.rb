class Student
    attr_accessor :first_name, :last_name, :email, :username

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
puts paco.first_name