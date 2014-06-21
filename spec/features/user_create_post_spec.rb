require 'rails_helper'

feature 'create post:'  do
  scenario 'valid' do
    visit new_post_path
    fill_in 'Title', with: 'title of post'
    fill_in 'Body', with: 'body of post'
    click_on 'Create Post'

    expect(current_path).to eq posts_path
  end

end
