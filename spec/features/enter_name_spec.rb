feature 'enter name' do 

  scenario 'prints a form to the page' do 
    visit('/')
    expect(page).to have_content 'Player 1 name:'
  end

  scenario 'enters info into the form' do 
    sign_in_and_play
    expect(page).to have_content 'david vs. goliath'
  end
end
