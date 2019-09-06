#testing choice function 

require "test/unit"
require_relative "trail"

class CaulkTest < Test::Unit::TestCase

  #create an array and check if it's correct.
  options = [
    "You made it safely across!", 
    "Your wagon capsized!", 
    "You made it to the other side, but drifted downstream and lost the trail."
  ]
  
  def test_option
    trail = Caulk.new(options[0])
    assert_equal("You made it safely across!", trail.first_option)
  end
  
  # def test_option2
  #   trail2 = Caulk.new("You made it safely across!", "Your wagon capsized!", "You made it to the other side, but drifted downstream and lost the trail.")
  #   assert_equal("Your wagon capsized!", trail2.second_option)
  # end

  # def test_option3
  #   trail3 = Caulk.new("You made it safely across!", "Your wagon capsized!", "You made it to the other side, but drifted downstream and lost the trail.")
  #   assert_equal("You made it to the other side, but drifted downstream and lost the trail.", trail3.third_option)
  # end
end