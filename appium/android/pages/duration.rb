module Endomondo
  module WorkoutDurationPage
    class << self
      
      def assert_exists
        @hours = find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.NumberPicker")
        #  [@class='android.widget.TextView' and @text='Sport']") android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]//android.widget.FrameLayout[1]/android.widget.RelativeLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[3]/
        @minutes = find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.NumberPicker")
        @seconds = find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.LinearLayout[3]/android.widget.NumberPicker")
        @done = find_element(:id,"button1")
      end

      def assert
        wait { assert_exists }
      end
      
      def set_hours
        wait { 3.times {swipe_element(@hours,200,150) }}
      end

      def swipe_element(element, offset, duration)
        sleep 1
        start_x = element.location.x+offset
        start_y = element.location.y
        end_x = start_x -offset
        end_y = start_y
        swipe({'duration': duration, 'start_x': start_x, 'start_y': start_y, 'end_x': end_x, 'end_y': end_y})
      end
      
      def set_minutes
       wait { 3.times {swipe_element(@minutes,200,150) }}
      end
      
      def set_seconds
        wait { 3.times {swipe_element(@seconds,200,150) }}
      end

      def click_done
        wait { @done.click }
      end

      
    end
  end
end

module Kernel
  def workout_duration_page
    Endomondo::WorkoutDurationPage
  end
end