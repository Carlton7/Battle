# require_relative '../../app'

  feature 'testing user input for player names' do

    scenario "expects players to fill in their names" do
        sign_in_and_play
        click_button 'Player 1 Attack'
        expect(page).to have_content "carlton attacked lucy"
    end 

  end