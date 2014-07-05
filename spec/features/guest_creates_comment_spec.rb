require 'rails_helper'

feature 'Guest creates comment' do
  scenario 'in a post\'s page' do
    post = Post.create title: 'cenas'
    visit post_path(post)

    fill_in 'comment_body', with: 'comment'
    click_on 'Add comment'

    expect(page).to have_text 'comment'
  end

end
