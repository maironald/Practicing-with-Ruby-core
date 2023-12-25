class Box 
    def initialize(h, w)
        @height = h 
        @width = w
    end
    def getHeight
        return @height
    end
    def getWidth
        return @width
    end
    def setHeight(h)
        @height = h
    end
    def setWidth(w)
        @width = w
    end
    def getArea
        return @height * @width
    end

    private :getHeight, :getWidth, :setHeight, :setWidth
    public :getArea
end

b1 = Box.new(3,4)
puts b1.getArea
