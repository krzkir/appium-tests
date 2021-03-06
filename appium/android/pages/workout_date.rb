module Endomondo
  module WorkoutDatePage
    class << self
      
      def assert_exists
        @oct01=find_element(:xpath,"//*[@class='android.view.View'and @content-desc='01 October 2015']")
        @day = find_element(:id,"date_picker_day")
        @month = find_element(:id,"date_picker_month")
        @year = find_element(:id,"date_picker_year")
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
  def workout_date_page
    Endomondo::WorkoutDatePage
  end
end