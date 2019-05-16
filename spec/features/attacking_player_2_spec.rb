feature 'attacking player 2' do

    scenario "expects player 1 to attack player 2 and get confirmation" do
        sign_in_and_play
        expect(page).to have_content "lucy: 100HP"
    end 

end