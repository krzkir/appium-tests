module Endomondo
  module MoreOptionsPage
    class << self
      
      def assert_exists
        @audio = find_element(:xpath,"//*[@class='android.widget.TextView' and @text='Audio Settings']")
        @settings = find_element(:xpath,"//*[@class='android.widget.TextView' and @text='Settings']")
        @exit_button = find_element(:xpath,"//*[@class='android.widget.TextView' and @text='Exit']")
      end

      def assert
        wait { assert_exists }
      end
      
      def click_settings
        wait { @settings.click }
      end

      def click_audio
        wait { @audio.click }
      end

      def click_exit
        wait { @exit_button.click }
      end

    end
  end
end

module Kernel
  def more_options_page
    Endomondo::MoreOptionsPage
  end
end
