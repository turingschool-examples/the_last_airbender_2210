require 'rails_helper'

RSpec.describe 'members index', type: :feature do
  describe "go to /search" do
    it 'displays list of members' do 

      visit '/search?nation=Fire+Nation'
      save_and_open_page
      expect(page).to have_content 'Fire Nation'
      expect(page).to have_content 'Number of members: 97'

    end
  end
end
