module Endomondo
  module WorkoutDistancePage
    class << self
      
      def assert_exists
        @major = find_elements(class: 'android.widget.NumberPicker')[0]
        @minor = find_elements(class: 'android.widget.NumberPicker')[1]
        @done = find_element(:id,"button1")
      end

      def assert
        wait { assert_exists }
      end
            
      def set_major(count)
        wait { count.times {swipe_element(@major,150,300) }}
      end

      def set_minor(count)
        wait { count.times {swipe_element(@minor,150,300) }}
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