#class for Model2 goes here
#Feel free to change the name of the class

class Membership

    attr_accessor :student, :club
    attr_reader :dues

    @@all = []

    def initialize(student, club, dues=50)
        @student = student
        @club = club
        @dues = dues
        @@all << self
    end

    def self.all
        @@all
    end

    def self.total_dues
    #returns the total dues of all students paying for clubs
        @@all.sum do |membership|
            membership.dues
        end
    end

    def self.most_expensive_club
    #returns name of most expensive club (club with highest dues)
        expensive_club = @@all.max_by do |membership|
            membership.dues
        end
        expensive_club.club
    end

end
