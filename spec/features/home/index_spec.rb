require 'rails_helper'

RSpec.describe 'Home', type: :feature do 
  describe 'Home Page' do 
    it 'exists' do 
      visit root_path

      expect(page).to have_content("Welcome to my Portfolio!")
    end

    it 'has buttons on the home page for other areas of the portfolio' do 
      visit root_path

      within '#buttons' do 
        expect(page).to have_button('Resume')
        expect(page).to have_button('Contact Me')
        expect(page).to have_button('My Story')
      end 
    end

    it 'redirects users to the resume page' do 
      visit root_path

      within '#buttons' do 
        click_button('Resume')
      end

      expect(current_path).to eq(resume_index_path)
      expect(page).to have_content("Welcome to my resume!")
    end

    it 'redirects users to the contact page' do 
      visit root_path

      within '#buttons' do 
        click_button('Contact Me')
      end

      expect(current_path).to eq(contact_index_path)
      expect(page).to have_content("Welcome to my contact page!")
    end
  end
end