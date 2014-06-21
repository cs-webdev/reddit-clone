require 'rails_helper'

feature 'Guest views posts'  do
  scenario 'in homepage' do
    Post.create title: 'first post', body: 'content'
    visit root_path

    expect(page).to have_text 'first post'
  end

end
