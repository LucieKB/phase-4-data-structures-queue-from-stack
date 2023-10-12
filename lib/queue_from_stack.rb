require_relative './stack'

class MyQueue

    def initialize
        @s1=Stack.new
        @s2=Stack.new
        
    end

    def add(value)
        @s2.push(@s1.pop) until @s1.empty?
        @s1.push(value)
        @s1.push(@s2.pop) until @s2.empty?
    end

    def remove
        if @s2.empty?
            @s1.pop
        else
            @s2.pop
        end
    end

    def peek
        if @s2.empty?
            @s1.peek
        else
            @s2.peek
        end
    end



end
