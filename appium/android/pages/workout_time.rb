module Endomondo
  module WorkoutTimePage
    class << self
      
      def assert_exists
        @done = find_element(:id,"button1")
      end

      def assert
        wait { assert_exists }
      end
      
      def set_year
        wait { @oct01.click }
      end

      def click_done
        wait { @done.click }
      end

    end
  end
end

module Kernel
  def workout_time_page
    Endomondo::WorkoutTimePage
  end
end