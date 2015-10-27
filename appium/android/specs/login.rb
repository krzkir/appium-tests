describe 'I cannot login with facebook because I don\'t have a FB app' do
  t 'spec' do
    login_page.click_login
    login_with_page.click_login_with_facebook
    login_with_page.assert_no_fb_app
    back_click
    reset
  end
end

describe 'I cannot login with Google' do
  t 'spec' do
    login_page.click_login
    login_with_page.click_login_with_google
    login_with_page.assert_google_error
    back_click
    reset
  end
end

describe 'I can login with username and password' do
  t 'spec' do
    login_page.click_login
    login_with_page.assert
    login_with_page.click_login_with_email
    login_with_email_page.fill_form("testmail@te.st", "endomondo")
    login_with_email_page.click_login
    workout_page.assert
    workout_page.click_more_options
    more_options_page.assert 
    more_options_page.click_exit
    reset
  end
end