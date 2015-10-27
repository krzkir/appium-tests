module Endomondo
	module Signup
		class << self
			
			def click_login
				assert
				wait { @login.click }
				login_with_page.assert
			end

			def signup_click
				assert
				wait { @signup.click }
				signup_with_page.assert
			end

			def assert_exists
				@login = find_element(:id, 'login')
				@signup = find_element(:id, 'signup')
			end

			def assert
				wait { assert_exists }
			end
			
		end
	end
end

module Kernel
	def login_page
		Endomondo::Signup
	end
end