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
    add_workout_page.click_start_time
    workout_date_page.assert
    workout_date_page.set_year
    workout_date_page.click_done
    workout_time_page.assert
    workout_time_page.click_done
    add_workout_page.click_duration
    workout_duration_page.assert
    workout_duration_page.set_hours("5")
    workout_duration_page.set_minutes("7")
    workout_duration_page.set_seconds("15")
    workout_duration_page.click_done
    add_workout_page.click_distance
    workout_distance_page.assert
    workout_distance_page.set_major("5")
    workout_distance_page.set_minor("55")
    workout_distance_page.click_done
    add_workout_page.click_save
    workout_summary_page.assert
    reset
  end
end
