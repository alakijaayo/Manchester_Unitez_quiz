feature 'United Quiz' do
  scenario 'it welcomes you to the quiz' do
    visit('/')
    expect(page).to have_content "Hello and welcome to the Manchester United Quiz!"
  end

  scenario 'it allows you to pick easy questions' do
    visit('/')
    select 'Easy', from: 'level'
    click_button 'Submit'
    expect(page).to have_content "You have selected the Easy questions."
  end

  scenario 'it allows you to pick medium questions' do
    visit('/')
    select 'Medium', from: 'level'
    click_button 'Submit'
    expect(page).to have_content "You have selected the Medium questions."
  end

  scenario 'it allows you to pick hard questions' do
    visit('/')
    select 'Hard', from: 'level'
    click_button 'Submit'
    expect(page).to have_content "You have selected the Hard questions. Only for the Die Hard Red Devils!!"
  end
end
