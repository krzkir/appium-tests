module Endomondo
  module WorkoutDistancePage
    class << self
      
      def assert_exists
        @major = find_element(:xpath,"//android.widget.LinearLayout/android.widget.NumberPicker[1]")
        @done = find_element(:id,"button1")
      end

      def assert
        wait { assert_exists }
      end

      def swipe_element(element, offset, duration)
        sleep 1
        start_x = element.location.x+offset
        start_y = element.location.y
        end_x = start_x -offset
        end_y = start_y
        swipe({'duration': duration, 'start_x': start_x, 'start_y': start_y, 'end_x': end_x, 'end_y': end_y})
      end
            
      def set_major
        wait { 3.times {swipe_element(@major,200,150) }}
      end

      def click_done
        wait { @done.click }
      end

      
    end
  end
end

module Kernel
  def workout_distance_page
    Endomondo::WorkoutDistancePage
  end
end