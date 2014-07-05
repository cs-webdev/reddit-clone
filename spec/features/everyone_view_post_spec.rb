require 'rails_helper'

feature 'Guest view'  do
  scenario 'one post' do
    user = User.create email: 'email@email.com', password: 'passTeste'
    post = Post.create title: 'first post', body: 'content of post'
    visit post_path post

    within 'form' do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password

      click_on 'Sign in'
    end

    expect(page).to have_text 'first post'
    expect(page).to have_text 'content of post'
  end

end
