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
    #adds a new member for this club
        Membership.new(student, self, dues)
    end

    def students
    #determines which students have a membership in this club
    #returns an isntance
        Membership.all.select do |membership|
            membership.club == self
        end
    end

    def students_count
    #counts this number of students in this club
        students.count
    end

    def is_a_member
    #returns an array of students names that are a part of this club
        students.map do |students|
            students.student
        end
    end

    def self.most_popular
    #determines which club is most popular via student count
        club = @@all.max_by do |club|
            club.students_count
        end
    end

end
