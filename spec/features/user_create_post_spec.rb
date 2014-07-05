require 'rails_helper'

feature 'create post:'  do
  scenario 'valid' do
    user = User.create email: 'email@email.com', password: 'passTeste'

    visit new_post_path

    within 'form' do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password

      click_on 'Sign in'
    end

    fill_in 'Title', with: 'title of post'
    fill_in 'Body', with: 'body of post'
    click_on 'Create Post'

    expect(page).to have_content 'title of post'
  end

end
