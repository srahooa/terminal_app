require "test/unit"
require_relative "obstacles"

class MenuTest < Test::Unit::TestCase
    def setup
        options = {
            "1": "Travel the Trail", 
            "2": "Learn about the Trail", 
            "3": "Quit the Trail", 
        }

        @obstacles = Obstacles.new(options)
        # @obstacles.add_item(1, "Travel the Trail")
        # @obstacles.add_item(2, "Learn about the Trail")
        # @obstacles.add_item(3, "Quit the Trail")
    end

    def test_show_menu
        menu_text = @obstacles.show
        assert_equal("What would you like to do?\n1. Travel the Trail\n2. Learn about the Trail\n3. Quit the Trail\n", menu_text)
    end

    # def test_get_choice
    #     assert_equal(1, @obstacle.test_get_choice("Travel the Trail"))
    #     assert_equal(2, @obstacle.test_get_choice("Learn about the Trail"))
    #     assert_equal(3, @obstacle.test_get_choice("Quit the Trail"))
    # end
end
