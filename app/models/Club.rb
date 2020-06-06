#class for Model1 goes here
#Feel free to change the name of the class

class Club

    attr_accessor :club_name

    @@all = []

    def initialize(club_name)
        @club_name = club_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_member(student, dues=50)
        Membership.new(student, self, dues)
    end

    def students
        Membership.all.select do |membership|
            membership.club == self
        end
    end

    def is_a_member
        students.map do |students|
            students.student
        end
    end

end
