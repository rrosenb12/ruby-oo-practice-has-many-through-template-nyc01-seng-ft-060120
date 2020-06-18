require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rebecca = Student.new("rebecca")
haley = Student.new("haley")
isabel = Student.new("isabel")
amelia = Student.new("amelia")

alpha_phi = Club.new("alpha phi")
kite_and_keys = Club.new("kite and keys")
writers_house = Club.new("writers house")
kappa_delta = Club.new("kappa delta")
sisters = Club.new("sisters")

haley.add_membership(alpha_phi, 50)
isabel.add_membership(alpha_phi, 50)
rebecca.add_membership(alpha_phi, 50)
rebecca.add_membership(kite_and_keys, 0)
amelia.add_membership(kite_and_keys, 0)
amelia.add_membership(writers_house, 0)
amelia.add_membership(kappa_delta, 70)
amelia.add_membership(sisters, 20)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
