require 'rails_helper'

feature 'Guest view'  do
  scenario 'one post' do
    post = Post.create title: 'fisrt post', body: 'content'
    visit post_path post

    expect(page).to have_text 'fisrt post' and have_text 'content'
  end

end
