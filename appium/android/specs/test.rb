require_relative '../requires' 
#=begin
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

describe 'I can manually add workout data' do
  t 'spec' do
    login
    workout_page.assert
    workout_page.click_navigation_drawer
    drawer_page.assert
    drawer_page.click_history
    history_page.assert
    history_page.click_add_workout
    add_workout_page.assert  
    add_workout_page.click_sport
    select_sport_page.assert
    select_sport_page.click_fencing
    add_workout_page.click_duration
    workout_duration_page.assert
    workout_duration_page.set_hours
    workout_duration_page.set_minutes
    workout_duration_page.click_done
    add_workout_page.click_distance
    workout_distance_page.assert
    workout_distance_page.set_major
    workout_distance_page.click_done
    add_workout_page.click_save
    workout_summary_page.assert
    reset
  end
end


describe 'I can pause training after starting it' do
  t 'spec' do
    login
    workout_page.assert
    workout_page.click_start
    workout_page.check_timer_run
    workout_page.click_pause
    workout_page.check_timer_pause
    reset
  end
end

describe 'I can resume training after pausing it' do
  t 'spec' do
    login
    workout_page.assert
    workout_page.click_start
    workout_page.check_timer_run
    workout_page.click_pause
    workout_page.check_timer_pause
    workout_page.click_start   
    workout_page.check_timer_run
    reset
  end
end

describe 'I can see training summary after finishing training' do
  t 'spec' do
    login
    workout_page.assert
    workout_page.click_start
    workout_page.check_timer_run
    workout_page.click_pause
    workout_page.check_timer_pause
    workout_page.click_stop
    workout_summary_page.assert
    reset
  end
end


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