module Endomondo
  module Drawer
	class << self

	  def assert_exists
		@history = text('History')
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