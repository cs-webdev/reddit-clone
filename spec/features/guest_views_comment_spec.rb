require 'rails_helper'

feature 'Guest views comments' do

  scenario 'in a post\'s page' do
  	post = Post.create title: 'cenas'
    comment = Comment.create body: 'my comment', upvotes: 0, downvotes: 0, post: post
    user = User.create email: 'email@email.com', password: 'passTeste'
    visit post_path(post)
  
    within 'form' do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password

      click_on 'Sign in'
    end

    expect(page).to have_text comment.body
  end

end
