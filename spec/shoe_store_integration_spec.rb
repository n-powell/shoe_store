require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('the store path', {:type => :feature}) do
  it ('goes to the index page and confirms Mallz page.') do
    visit('/')
    expect(page).to have_content('MALL-Z')
  end

  it ('goes to the brands page and confirms link is working to brands.') do
    visit('/')
    click_link('See all Brands')
    expect(page).to have_content('Add a brand')
  end

  it ('navigates to brand page and creates a brand with name and price.') do
    visit('/')
    click_link('See all Brands')
    fill_in('brand', :with => 'nike')
    fill_in('price', :with => '25')
    click_button('Submit')
    expect(page).to have_content('Nike')
  end

  it ('navigates to the stores page and creates a store with a name.') do
    visit('/')
    click_link('See all Stores')
    click_link('Enter Store to join this very comfortable mall')
    fill_in('store_name', :with => 'zooms')
    click_button('Submit')
    click_link('See all Stores')
    expect(page).to have_content('Zooms')
  end
end
