module Endomondo
	module Drawer
		class << self

			def assert_exists
			#	@history = find_element(:xpath,"//*[contains(@text,'History')]")
				@history = text('History')
			#	@signup = find_element(:id, 'signup') @class='android.widget.TextView'and 
			end

			def assert
				wait { assert_exists }
			end
						
			def click_history
				wait { @history.click }
			end



		end
	end
end

module Kernel
	def drawer_page
		Endomondo::Drawer
	end
end