feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    # expect(page).to have_content 'Testing infrastructure working!'
  end

  scenario 'Prints given username on-screen' do
    visit('/')
    fill_in :first_player, with: 'Paul'
    fill_in :second_player, with: 'Corinne'
    click_button 'Enter'

    save_and_open_page

    expect(page).to have_content 'Paul vs. Corinne'
  end
end