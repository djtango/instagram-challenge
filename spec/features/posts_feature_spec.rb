require 'rails_helper'

feature 'images' do
  context 'no images have been added' do
    scenario 'should display a prompt to add an image' do
      visit '/posts'
      expect(page).to have_content 'No images yet'
      expect(page).to have_link 'Add an image'
    end
  end

  context 'images have been added' do
    before do
      Post.create(title: 'Best dumpling ever')
    end

    scenario 'display image' do
      visit '/posts'
      expect(page).to have_content('Best dumpling ever')
      expect(page).not_to have_content('No images yet')
    end
  end
end
