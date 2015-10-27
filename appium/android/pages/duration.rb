module Endomondo
  module WorkoutDurationPage
    class << self
      
      def assert_exists
        @hours = find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.NumberPicker")
        @minutes = find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.NumberPicker")
        @seconds = find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.LinearLayout[3]/android.widget.NumberPicker")
        @done = find_element(:id,"button1")
      end

      def assert
        wait { assert_exists }
      end

      def set_hours(count)
        wait { count.times {swipe_element(@hours,150,300) }}
      end
      
      def set_minutes(count)
       wait { count.times {swipe_element(@minutes,150,300) }}
      end
      
      def set_seconds(count)
        wait { count.times {swipe_element(@seconds,150,300) }}
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