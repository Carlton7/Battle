def sign_in_and_play
    
    visit '/'
    fill_in :player_1_name, with: 'carlton'
    fill_in :player_2_name, with: 'lucy'
    click_button 'Submit'

end