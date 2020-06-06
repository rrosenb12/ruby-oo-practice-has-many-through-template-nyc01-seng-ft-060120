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

end
