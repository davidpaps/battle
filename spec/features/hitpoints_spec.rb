feature 'testing initial hitpoints' do 
  scenario 'we can see player hitpoints' do 
    sign_in_and_play
    expect(page).to have_content 'david HP = 100'
  end
end