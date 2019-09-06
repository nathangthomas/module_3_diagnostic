require 'rails_helper'

feature "When a user visits the root page and selects 'Greyjoy' from the dropdown and I click 'Get Members' " do
  scenario "I should be redirected to '/search' page and see a message '7 Members' and see a list of the 7 members of House Greyjoy. and see a name and Id for each member." do



    visit "/"
    within(".navbar") do
      select('Greyjoy', from: :search)
      click_button 'Search'
    end

    expect(current_path).to eq('/search')

    expect(page).to have_content("7 Members")

    expect(page).to have_css(".members", count: 7)

    within(first(".member"))do
      expect(page).to have_css(".name")
      expect(page).to have_css(".id")
      end
    end
  end
