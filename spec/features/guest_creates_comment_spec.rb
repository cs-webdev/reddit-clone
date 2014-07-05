require 'rails_helper'

feature 'Guest creates comment' do
  scenario 'in a post\'s page' do
  	user = User.create email: 'email@email.com', password: 'passTeste'
    post = Post.create title: 'cenas'
    visit post_path(post)

	within 'form' do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password

      click_on 'Sign in'
    end

	within 'form' do
    	fill_in 'comment_body', with: 'comment'
    	click_on 'Add comment'
	end

    expect(page).to have_text 'comment'
  end

end
