require 'rails_helper'

feature 'Guest views posts'  do
  scenario 'in homepage' do
    Post.create title: 'fisrt post', body: 'content'
    visit root_path

    expect(page).to have_text 'fisrt post'
  end

end