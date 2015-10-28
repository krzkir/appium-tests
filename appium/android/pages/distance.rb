module Endomondo
  module WorkoutDistancePage
    class << self
      
      def assert_exists
        @major = find_elements(class: 'android.widget.NumberPicker')[0]
        @major_text = find_elements(class: 'android.widget.EditText')[0]
        @minor = find_elements(class: 'android.widget.NumberPicker')[1]
        @minor_text = find_elements(class: 'android.widget.EditText')[1]
        @done = find_element(:id,"button1")
      end

      def assert
        wait { assert_exists }
      end
            
      def set_major(value)
        wait{ 
          until value==@major_text.text do
            swipe_element(@major)
          end
        }
      end

      def set_minor(value)
        wait{ 
          until value==@minor_text.text do
            swipe_element(@minor)
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
  def workout_distance_page
    Endomondo::WorkoutDistancePage
  end
end