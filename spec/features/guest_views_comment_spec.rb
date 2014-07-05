require 'rails_helper'

feature 'Guest views comments' do
  scenario 'in homepage' do
    Comment.create body: 'my comment', upvotes: 0, downvotes: 0
    visit root_path

    expect(page).to have_text 'my comment'
  end

end