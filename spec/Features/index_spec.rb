require 'rails_helper'

feature 'Index' do
  scenario 'Displaying index route' do
    visit '/'
    expect(page).to have_content 'Hello World'
  end
end
