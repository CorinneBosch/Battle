feature 'attacking' do
  scenario 'receive confirmation when attacking second player' do
    sign_in_and_play
    # find("//form/button[id='attack']").click
    click_button 'Attack'
    expect(page).to have_content("Frosmoth attacked Eldegoss")
  end

  
end