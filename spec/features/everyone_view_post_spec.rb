require 'rails_helper'

feature 'Guest view'  do
  scenario 'one post' do
    post = Post.create title: 'first post', body: 'content of post'
    visit post_path post

    expect(page).to have_text 'first post'
    expect(page).to have_text 'content of post'
  end

end
