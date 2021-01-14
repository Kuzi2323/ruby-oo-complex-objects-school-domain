class School
    attr_accessor :roster, :student_name, :school_name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else 
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

     def grade(grade)
        @roster[grade]
     end

     def sort 
        sorted_hash = {}
        @roster.sort.each do |grade, student_name_array|
            sorted_hash[grade] = (student_name_array.sort)
        end
        sorted_hash
    end

end


