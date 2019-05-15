require_relative '../../app'

  feature 'testing homepage' do
    
    # scenario "checks that the homepage says Testing infrastructure working!" do
    #     visit '/'
    #  expect(page).to have_content "Testing infrastructure working!"
    # end 

    scenario "expects players to fill in their names" do
        visit '/'
        fill_in :player_1_name, with: 'carlton'
        fill_in :player_2_name, with: 'lucy'
        click_button 'Submit'
        expect(page).to have_content "carlton vs. lucy"
    end 

  end