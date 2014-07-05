require 'rails_helper'

feature 'edit post:'  do
  scenario 'valid' do
    user = User.create email: 'email@email.com', password: 'passTeste'

    @post = Post.create(title: 'title of post', body: 'body of post')
    visit edit_post_path(@post.id)

    within 'form' do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password

      click_on 'Sign in'
    end

    fill_in 'Title', with: 'title2 of post'
    fill_in 'Body', with: 'body2 of post'
    click_on 'Update Post'

    expect(page).to have_content 'title2 of post'
  end

end
