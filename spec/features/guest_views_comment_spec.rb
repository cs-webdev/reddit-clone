require 'rails_helper'

feature 'Guest views comments'  do
  scenario 'in homepage' do
    Post.create title: 'first comment', body: 'content'
    visit root_path

    expect(page).to have_text 'first comment'
  end

end