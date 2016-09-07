require 'rails_helper'

feature 'User can sign in and out' do
  context 'user not signed in and on index' do
    it 'should see "sign in" link and "sign up" link' do
      visit '/'
      expect(page).to have_link 'Sign in'
      expect(page).to have_link 'Sign up'
    end

    it 'should not see "Sign out" link' do
      visit '/'
      expect(page).not_to have_link 'Sign out'
    end
  end

  context 'user signed in on the index' do
    before do
      visit '/'
      click_link 'Sign up'
      fill_in 'Email', with: 'test@gmail.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_button 'Sign up'
    end

    it 'should see "sign out" link' do
      visit '/'
      expect(page).to have_link 'Sign out'
    end

    it 'should not see "sign up" and "sign in" links' do
      visit '/'
      expect(page).not_to have_link 'Sign up'
      expect(page).not_to have_link 'Sign in'
    end
  end
end
