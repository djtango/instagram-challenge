require 'rails_helper'

feature 'posts' do
  context 'no posts have been added' do
    scenario 'should display a prompt to add a post' do
      visit '/posts'
      expect(page).to have_content 'No posts yet'
      expect(page).to have_link 'Add a post'
    end
  end

  context 'creating posts' do
    scenario 'let a user create a post' do
      visit '/posts'
      click_link 'Add a post'
      fill_in('Title', with: 'Best dumpling ever')
      attach_file('post_image', './app/assets/images/test_image_1.jpg')
      click_button 'Create Post'
      expect(page).to have_content 'Best dumpling ever'
      expect(current_path).to eq '/posts'
    end
  end

  context 'displaying posts that have been added' do
    before do
      visit('/posts')
      click_link('Add a post')
      fill_in('Title', with: 'Best dumpling ever')
      attach_file('post_image', './app/assets/images/test_image_1.jpg')
      click_button 'Create Post'
    end

    scenario 'display posts' do
      visit '/posts'
      expect(page).to have_content('Best dumpling ever')
      expect(page).not_to have_content('No posts yet')
    end

    scenario 'all posts should have images' do
      image = "test_image_1.jpg"
      visit '/posts'
      expect(page).to have_xpath("//img[contains(@src, \"#{image}\")]")
    end
  end
end
