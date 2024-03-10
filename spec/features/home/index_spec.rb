require 'rails_helper'

RSpec.describe 'Home', type: :feature do 
  describe 'Home Page' do 
    it 'exists' do 
      visit root_path

      expect(page).to have_content("Welcome to my Portfolio!")
    end
  end
end