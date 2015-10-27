module Endomondo
  module ProfilePage
    class << self
      
      def assert_exists
        @save = find_element(:id,"Button")
        @name = find_element(:id,"Name")
      end

      def assert
        wait { assert_exists }
      end
      
      def scroll_to_kilometers
        wait { @kilometers = scroll_to("Kilometers") }
      end

      def scroll_to_miles
        wait { @miles = scroll_to("Miles") }
      end

      def click_kilometers
        wait { @kilometers.click }
      end

      def click_miles
        wait { @miles.click }
      end

      def click_save
        wait { @save.click }
      end

    end
  end
end

module Kernel
  def profile_page
    Endomondo::ProfilePage
  end
end
