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
    #adds a new membership for this student
        Membership.new(self, club, dues)
    end

    def clubs
    #determines which student has this membership
        Membership.all.select do |membership|
            membership.student == self
        end
    end

    def membership_count
    #counts how many clubs this student is a part of via membership
        clubs.count
    end

    def dues
    #returns how much this student pays for her clubs
        clubs.sum do |club|
            club.dues
        end
    end

    def belongs_to
    #returns which clubs this student is a part of
        clubs.map do |clubs|
            clubs.club
        end
    end

    def self.most_involved
    #determines which student is involved in the most clubs
        @@all.max_by do |i_student|
            i_student.membership_count
        end
    end

    def self.pays_the_most
    #determines which student pays the most dues
        in_debt_student = @@all.max_by do |i_d|
            i_d.dues
        end
    end

    def self.involved 
    #marks invovled students as those who are a part of more than 1 club
        @@all.select do |student|
            student.membership_count > 1
        end
    end

end
