module Endomondo
  module SelectSportPage
    class << self
      
      def assert_exists
        @fencing = find_element(:xpath,"//*[@class='android.widget.TextView' and @text='Fencing']")
      end

      def assert
        wait { assert_exists }
      end
      
      def click_fencing
        wait { @fencing.click }
      end      
    end
  end
end

module Kernel
  def select_sport_page
    Endomondo::SelectSportPage
  end
end