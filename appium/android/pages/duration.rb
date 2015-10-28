module Endomondo
  module WorkoutDurationPage
    class << self
      
      def assert_exists
        @hours = find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.NumberPicker")
        @hours_text = find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.NumberPicker/android.widget.EditText")
        @minutes = find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.NumberPicker")
        @minutes_text = find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.NumberPicker/android.widget.EditText")
        @seconds = find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.LinearLayout[3]/android.widget.NumberPicker")
        @seconds_text = find_element(:xpath,"//android.widget.LinearLayout[1]/android.widget.LinearLayout[3]/android.widget.NumberPicker/android.widget.EditText")
        @done = find_element(:id,"button1")
      end

      def assert
        wait { assert_exists }
      end

      def set_hours(value)
        wait{ 
          until value==@hours_text.text do
            swipe_element(@hours)
          end
        }
      end
      
      def set_minutes(value)
        wait{ 
          until value==@minutes_text.text do
            swipe_element(@minutes)
          end
        }
      end
      
      def set_seconds(value)
        wait{ 
          until value==@seconds_text.text do
            swipe_element(@seconds)
          end
        }
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