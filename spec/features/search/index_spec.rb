require "rails_helper"

RSpec.describe "Seach Index" do
  before :each do
    @members = AvatarFacade.get_nation_members("fire+nation", 25)
    @members_count = AvatarFacade.get_nation_members("fire+nation", 200).count

    visit root_path

    select "Fire Nation", :from => "nation"
    click_button "Search For Members"
  end

  it 'has the total amount of members of the nation' do
    expect(page).to have_content("Total Members: #{@members_count}")
    expect(page).to have_content("The First 25 Members:")
  end

  it 'has all the members info displayed' do
    @members.each do |member|
      within("#member-#{member.id}") do
        expect(page).to have_content(member.name)

        # member.allies.each do |ally|
        #   expect(page).to have_content(ally || "None")
        # end

        # member.enemies.each do |enemy|
        #   expect(page).to have_content(enemy || "None")
        # end

        expect(page).to have_content(member.affiliation)
      end
    end
  end
end