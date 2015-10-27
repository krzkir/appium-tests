module Endomondo
  module AddWorkoutPage
    class << self
      
      def assert_exists
        @sport = find_element(:xpath,"//*[@class='android.widget.TextView' and @text='Sport']")
        @start_time = find_element(:xpath,"//*[@class='android.widget.TextView' and @text='Start time']")
        @duration = find_element(:xpath,"//*[@class='android.widget.TextView' and @text='Duration']")
        @distance = find_element(:xpath,"//*[@class='android.widget.TextView' and @text='Distance']")
        @save = find_element(:id,'saveButton')
      end

      def assert
        wait { assert_exists }
      end
      
      def click_sport
        wait { @sport.click }
      end

      def click_start_time
        wait { @start_time.click }
      end

      def click_duration
        wait { @duration.click }
      end

      def click_distance
        wait { @distance.click }
      end

      def click_save
        wait {@save.click}
        
      end
      
    end
  end
end

module Kernel
  def add_workout_page
    Endomondo::AddWorkoutPage
  end
end