require_relative 'requires'

# Promote singleton methods onto UICatalog module
Appium.promote_singleton_appium_methods Endomondo

# Tests expect methods defined on the minispec object
Appium.promote_appium_methods ::Minitest::Spec

# I've found sleeping before pressing back helps
# if we did 3.times { back } then some back events may get discarded
# sleeping ensures the device has the time to process each individual event
def back_click
  sleep 2
  back
end

def login
	login_page.click_login
    login_with_page.assert
    login_with_page.click_login_with_email
    login_with_email_page.fill_form("testmail@te.st", "endomondo")
    login_with_email_page.click_login
end

def swipe_element(element, offset, duration)
	sleep 1
	start_x = element.location.x+50
	start_y = element.location.y+50
	end_x = start_x 
	end_y = start_y-offset
	swipe({'duration': duration, 'start_x': start_x, 'start_y': start_y, 'end_x': end_x, 'end_y': end_y})
end  