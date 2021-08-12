def sign_in_and_play
  visit('/')
  fill_in :first_player, with: 'Frosmoth'
  fill_in :second_player, with: 'Eldegoss'
  click_button 'Enter'
end