module Endomondo
  module SettingsPage
    class << self
      
      def assert_exists
        @up = find_element(:xpath,"//*[@class='android.widget.ImageButton'and @content-desc='Navigate up']")
        @profile = find_element(:xpath,"//*[@class='android.widget.TextView' and @text='Profile']")
      end

      def assert
        wait { assert_exists }
      end
      
      def click_profile
        wait { @profile.click }
      end

      def navigate_up
        wait { @up.click }
      end
    end
  end
end

module Kernel
  def settings_page
    Endomondo::SettingsPage
  end
end

