# RSpec syntax changes when being used with Capybara to do feature tests

# Capybara cheatsheet here https://thoughtbot.com/upcase/test-driven-rails-resources/capybara.pdf

# feature block is like 'describe' and scenario block is like 'it'
# test for page content
feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/') # visit the home page, call it 'page' (see next line)
    expect(page).to have_content("Testing infrastructure working!")
  end
end

# do some behavior then check for resulting content
feature '2 players start game' do
  scenario 'Can add two player names to a form' do
    visit('/')
    fill_in :player1_name, with: 'Richard'
    fill_in :player2_name, with: 'Josh'
    click_button 'Submit' # this is capybara
    expect(page).to have_content("Richard vs Josh") # what 'page' means is set by the visit statement above
  end
end



