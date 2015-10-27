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
