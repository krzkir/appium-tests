module Endomondo
	module History
		class << self

			def assert_exists
				@create_workout = find_element(:id,"create_workout_fab")
			end

			def assert
				wait { assert_exists }
			end

			def click_add_workout
				wait { @create_workout.click }
			end


		end
	end
end

module Kernel
	def history_page
		Endomondo::History
	end
end