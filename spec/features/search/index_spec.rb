require 'rails_helper'

RSpec.describe 'Search Index', type: :feature do
  describe 'as a visitor' do
    describe 'displays details about the population of the chosen nation' do
      it 'has a population count' do
        visit root_path

        select 'Fire Nation', from: 'nation'

        click_button 'Search For Members'

        expect(current_path).to eq(search_path)

        expect(page).to have_content('Population: 97')
      end

      it 'details first 25 members' do
        members ||= CharacterFacade.by_nation('Fire Nation')
        visit root_path

        select 'Fire Nation', from: 'nation'

        click_button 'Search For Members'

        expect(page).to have_css('div.character_details', maximum: 25)

        members.first(25).each do |member|
          expect(page).to have_content(member.name)
          if member.allies.count > 0
            expect(page).to have_content("Allies: #{member.allies.join(', ')}")
          else
            expect(page).to have_content("Allies: None")
          end
          if member.enemies.count > 0
            expect(page).to have_content("Enemies: #{member.enemies.join(', ')}")
          else
            expect(page).to have_content('Enemies: None')
          end
          expect(page).to have_content("Affiliation: #{member.affiliation}")
          # page.find("##{member.id}")['src'].should have_content('member.photo') if member.photo
          # Could not figure out how to test for the photo
        end
      end
    end
  end
end
