def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'david'
  fill_in :player_2_name, with: 'goliath'
  click_button 'Submit'
end
