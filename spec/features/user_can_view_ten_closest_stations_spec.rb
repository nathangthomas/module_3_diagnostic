require 'rails_helper'

feature "When a user visits the root page and fills in the search form with 80203" do
  scenario "I should be redirected to '/search' page and see a list of the 10 closest stations within 6 miles sorted by distance sorted by distance, limited to Electric and Propane (including Name, Address, Fuel Types, Distance, and Access Times)." do

    visit "/"
    within(".navbar") do

    fill_in :q, with: "80203"
    click_button 'Locate'

    expect(current_path).to eq('/search')
    expect(page).to have_css(".station", count: 10)

    within(first(".station"))do
      expect(page).to have_content(station.name)
      expect(page).to have_content(station.address)
      expect(page).to have_content(station.fuel_types)
      #double check fuel_types
      expect(page).to have_content(station.distance)
      expect(page).to have_content(station.access_time)
      end
    end
  end
end


# As a user
# When I visit "/"
# And I fill in the search form with 80203 (Note: Use the existing search form)
# And I click "Locate"
# Then I should be on page "/search"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
