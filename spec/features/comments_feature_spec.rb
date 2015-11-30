require 'rails_helper'

feature 'commenting' do
  before do
    visit '/posts'
    click_link 'Add a post'
    fill_in('Title', with: 'cat pic')
    attach_file('post_image', './app/assets/images/cat_pic_1.jpg')
    click_button 'Create Post'
  end

  scenario 'allows users to comment on a post' do
    visit '/posts'
    click_link 'comment'
    fill_in 'Thoughts', with: 'omggg so cute!'
    click_button 'Create Comment'
    expect(current_path).to eq '/posts'
    expect(page).to have_content 'omggg so cute!'
  end

end
