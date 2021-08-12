feature 'Displays players score' do
  
  scenario 'Displays player 1 health' do
    visit('/play')
    score = find("//form[@id='health']/div[@first_player='60']")
    expect(score).not_to be(nil)
  end

  scenario 'Dsiaplays player 2 health' do
    visit('/play')
    score = find("//form[@id='health']/div[@second_player='60']")
    expect(score).not_to be(nil)
  end
  
end