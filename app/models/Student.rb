#class for Model3 goes here
#Feel free to change the name of the class

class Student

    attr_accessor :student_name

    @@all = []

    def initialize(student_name)
        @student_name = student_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_membership(club, dues=50)
        Membership.new(self, club, dues)
    end

    def clubs
        Membership.all.select do |membership|
            membership.student == self
        end
    end

    def belongs_to
        clubs.map do |clubs|
            clubs.club
        end
    end

end
