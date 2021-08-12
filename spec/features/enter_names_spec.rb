feature 'Inputs names' do
  scenario 'Prints given username on-screen' do
    sign_in_and_play
    save_and_open_page

    expect(page).to have_content 'Frosmoth vs. Eldegoss'
  end
end