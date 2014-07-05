require 'rails_helper'

feature 'access to posts page' do
  scenario 'guest goes to posts page' do
    visit new_post_path

    expect(page).to have_content('Sign in')
  end

  scenario 'guest goes to posts page after login' do
    user = User.create email: 'email@email.com', password: 'passTeste'
    post = Post.create title: 'title of post', body: 'body test'

    visit post_path(post)

    within 'form' do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password

      click_on 'Sign in'
    end

    expect(page).to have_content(post.title)
  end

end
