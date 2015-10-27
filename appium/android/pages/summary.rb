module Endomondo
  module WorkoutSummaryPage
    class << self
      
      def assert_exists
        @header = find_element(:id,"sportHeader")
      end

      def assert
        wait { assert_exists }
      end
      

    end
  end
end

module Kernel
  def workout_summary_page
    Endomondo::WorkoutSummaryPage
  end
end