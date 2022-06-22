module First_module

    class Person 
        def initialize
            @fname='unkonwon yet'
             @lname='unkonwon yet'
             @birth_date='unkonwon yet' 
             @age=10
        end
        def user_data()
            puts "Enter your name"
            @name = gets.chomp
            puts "Enter your last name"
            @lname = gets.chomp
             puts "Enter your birth date"
            @birth_date = gets.chomp
             puts "Enter your age"
             num= gets.chomp
             @age =num.to_i
        end

        def to_s
            mo= @age*12
            da =  (Date.today - @birth_date)
         puts  " Welcome #@name  #@lname
             Your age #@age
             Month #{mo}
            #{da} Days old"
        end
    end
    
end


p1 = First_module::Person.new
p1.user_data
puts p1