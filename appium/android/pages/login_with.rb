module Endomondo
  module LoginWithPage
    class << self

      def assert_exists
        @login_with_email = find_element(:id, 'email')
        @login_with_facebook = find_element(:id, 'facebook')
        @login_with_google = find_element(:id, 'plus')
      end

      def assert
        wait { assert_exists }
      end  

      def click_login_with_email
        wait { @login_with_email.click }
        login_with_email_page.assert
      end

      def click_login_with_facebook
        wait { @login_with_facebook.click }
      end
      def click_login_with_google
        wait { @login_with_google.click }
      end

      def assert_no_fb_app
         @error_message = text_exact("To complete this action, you need to install the Facebook app.")
      end

      def assert_google_error
        @error_msg = text_exact("Google+ authentication failed.")
      end

    end
  end
end

module Kernel
  def login_with_page
    Endomondo::LoginWithPage
  end
end