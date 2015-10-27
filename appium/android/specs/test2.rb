describe 'I cannot login with facebook because I don\'t have a FB app' do
	t 'spec' do
		login_page.login_click
		login_with_page.click_login_with_facebook
		login_with_page.assert_no_fb_app
		back_click
		reset
	end

end