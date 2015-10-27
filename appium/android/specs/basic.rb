describe 'I can change units from miles to kilometers' do
  t 'spec' do
    login
    workout_page.assert
    workout_page.click_more_options
    more_options_page.assert
    more_options_page.click_settings
    settings_page.assert
    settings_page.click_profile
    profile_page.assert
    profile_page.scroll_to_kilometers
    profile_page.click_kilometers
    profile_page.click_save
    settings_page.navigate_up
    workout_page.assert_kilometers
    reset
  end
end
#=end
describe 'I can change units from kilometers to miles' do
  t 'spec' do
    login
    workout_page.assert
    workout_page.click_more_options
    more_options_page.assert
    more_options_page.click_settings
    settings_page.assert
    settings_page.click_profile
    profile_page.assert
    profile_page.scroll_to_miles
    profile_page.click_miles
    profile_page.click_save
    settings_page.navigate_up
    workout_page.assert_miles
    reset
  end
end