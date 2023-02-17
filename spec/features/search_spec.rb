require 'rails_helper'

RSpec.describe 'search page' do
    it 'returns correct info for air nomads' do
        visit "/"
        select "Air Nomads"
        click_on "Search For Members"
        expect(page).to have_content("Aang")
        expect(page).to have_content("Air Nomad boy")
        expect(page).to have_content("Appa")
        expect(page).to have_content("Appa's mother")
        expect(page).to have_content("Gyatso")
    end
    it 'returns correct info for air nomads' do
        visit "/"
        select "Earth Kingdom"
        click_on "Search For Members"
        expect(page).to have_content("46th Earth King")
        expect(page).to have_content("Arik")
        expect(page).to have_content("Ba Sing Se airship captain")
        expect(page).to have_content("Ba Sing Se airship co-pilot")
        expect(page).to have_content("The Big Bad Hippo")
    end 
    it 'returns correct info for air nomads' do
        visit "/"
        select "Fire Nation"
        click_on "Search For Members"
        expect(page).to have_content("Afiko")
        expect(page).to have_content("Azula")
        expect(page).to have_content("Azulon")
        expect(page).to have_content("Bujing")
        expect(page).to have_content("Chan")
    end 
    it 'returns correct info for air nomads' do
        visit "/"
        select "Water Tribes"
        click_on "Search For Members"
        expect(page).to have_content("Amon")
        expect(page).to have_content("Arnook")
        expect(page).to have_content("Bato")
        expect(page).to have_content("Desna and Eska")
        expect(page).to have_content("Gilak")
    end 
end
