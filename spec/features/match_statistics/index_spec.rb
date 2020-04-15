require 'rails_helper'

feature 'User can see list of Statistics' do
  given!(:statistics) { create_list :match_statistic, 3 }

  scenario 'User can view a list of Statistics' do
    visit root_path

    statistics.each do |stat|
      expect(page).to have_content stat.player.first_name  
    end
  end
end
