class Shape
    attr_accessor :color, :filled
    protected :color, :filled

    def initialize()
        @color = "red"
        @filled = true
    end

    def get_color
        puts @color
    end

    def set_color(color)
        @color = color
    end

    def is_filled
        puts @filled
    end

    def set_filled(filled)
        @filled = filled
    end

    def get_area()
    end

    def get_perimeter()
    end

    def to_s
        puts "Shape[color=#{@color}, filled=#{@filled}]"
    end
end

class Circle < Shape
    def initialize
        @radius = 1.0
        super()
    end

    def get_radius
        puts @radius
    end
    
    def set_radius(radius)
        @radius = radius
    end

    def get_area
       puts Math::PI * (@radius ** 2)
    end

    def get_perimeter
        puts Math::PI * (@radius + @radius)
    end

    def to_s
        puts "Circle[Shape[color=#{@color}, filled=#{@filled}, radius=#{@radius}]]"
    end
end

class Rectangle < Shape
    def initialize
        @width = 1.0
        @length = 1.0
        super()
    end

    def get_width
        puts @width
    end
    
    def set_width(width)
        @width = width
    end

    def get_length
        puts @length
    end
    
    def set_length(length)
        @length = length
    end

    def get_area
       area = @width * @length
       puts area
    end

    def get_perimeter
        perimeter = (2 * @length) + (2 * @width)
        puts perimeter
    end

    def to_s
        puts "Rectangle[Shape[color=#{@color}, filled=#{@filled}], width=#{@width}, length=#{@length}]"
    end

end

class Square < Rectangle
    attr_accessor :side

    def initialize
        super()
    end

    def get_side
        puts @side
    end

    def set_side(side)
        @side = side
    end

    def set_width(width)
        set_side(width)
    end

    def set_length(length)
        set_side(length)
    end

    def to_s
        puts "Square[Rectangle[Shape[color=#{@color},filled=#{@filled}],width=#{@width},length=#{@length}]]"
    end
end


puts "Shape object"
shape = Shape.new
puts shape
shape.set_color("blue")
shape.set_filled(false)
print "Is filled: "
shape.is_filled
print "Color: "
shape.get_color

print "-" * 30
puts

puts "Circle object"
circle = Circle.new
puts circle
print "Perimeter: "
circle.get_perimeter
print "Area: "
circle.get_area
circle.set_radius(3.5)
print "Radius: "
circle.get_radius
print "Perimeter: "
circle.get_perimeter
print "Area: "
circle.get_area

print "-" * 30
puts

puts "Rectangle object"
rectangle = Rectangle.new
puts rectangle
print "Width: "
rectangle.get_width
print "Length: "
rectangle.get_length
print "Perimeter: "
rectangle.get_perimeter
print "Area: "
rectangle.get_area
rectangle.set_width(10)
rectangle.set_length(15)
print "Perimeter: "
rectangle.get_perimeter
print "Area: "
rectangle.get_area

print "-" * 30
puts

puts "Square object"
square = Square.new
puts square
square.set_length(2)
square.set_width(2)
square.set_side(10)
puts "Side: "
square.get_side

print "-" * 30
puts