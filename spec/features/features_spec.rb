require_relative '../../app'

  feature 'testing homepage' do
    
    scenario "checks that the homepage says Testing infrastructure working!" do
        visit '/'
     expect(page).to have_content "Testing infrastructure working!"
    end 

    scenario "expects players to fill in their names" do
        visit '/'
        fill_in 'Player 1', with: 'carlton'
        fill_in 'Player 2', with: 'lucy'
        click_button 'Submit'
        expect(page).to have_content "Player 1 = carlton/n Player 2 = lucy"
    end 

  end