feature 'Displays players score' do
  
  scenario 'Displays player 1 health' do
    visit('/play')
    sign_in_and_play
    # score = find("//section[@id='health']/div[@first_player='60']")
    expect(page).to have_content 'Frosmoth: 60/60 HP'
  end

  scenario 'Dsiaplays player 2 health' do
    visit('/play')
    sign_in_and_play
    # score = find("//section[@id='health']/div[@second_player='60']")
    # expect(score).not_to be(nil)
    expect(page).to have_content 'Eldegoss: 60/60 HP'
  end
  
end