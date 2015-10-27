module Endomondo
  module WorkoutPage
    class << self
      
      def assert_exists
        @options = find_element(:xpath,"//*[@class='android.widget.ImageView'and @content-desc='More options']")
        @music = find_element(:xpath,"//*[@class='android.widget.TextView'and @content-desc='Music']")
        @inbox = find_element(:xpath,"//*[@class='android.widget.TextView'and @content-desc='Inbox']")
        @drawer = find_element(:xpath,"//*[@class='android.widget.ImageButton'and @content-desc='Navigation drawer']")
        @start = find_element(:id,'ButtonStartPauseFront')
        @timer = find_element(:id,'TVmainZoneValue')
        @stop = find_element(:id,'ButtonCountdownStopBackground')

      end

      def assert
        wait { assert_exists }
      end
      
      def assert_miles
        wait { text_exact("miles") }
      end

      def assert_kilometers
        wait { text_exact("km") }
      end

      def click_more_options
        wait { @options.click }
      end

      def click_navigation_drawer
        wait { @drawer.click }
      end

      def click_start
        wait { @start.click } 
      end

      def click_stop
        wait { @stop.click } 
      end

      def check_timer_run
        x=@timer.text
        sleep 2
        @timer.text!=x
      end

      def check_timer_pause
        x=@timer.text
        sleep 2
        @timer.text==x
      end

      def click_pause
        wait { @start.click }
      end
    end
  end
end

module Kernel
  def workout_page
    Endomondo::WorkoutPage
  end
end