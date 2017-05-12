require "bundler/setup"
Bundler.require :default
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/" do
  erb :index
end

#displays all stores
get "/stores" do
  @all_stores = Store.all
  erb(:stores)
end

#displays all stores
get "/store/new" do
  @all_stores = Store.all
  erb(:new_store)
end

#creates new store
post "/store/new" do
  store_name = params['store_name']
  new_store = Store.create(name: store_name)
  erb(:index)
end

#displays store specific page
get "/store/:id" do
  @all_stores = Store.all
  @store = Store.find(params['id'])
  erb(:store)
end

#creates new brand and price
post "/brand/new" do
  brand = params['brand']
  price = params['price']
  Brand.create(name: brand, price: price)
  redirect "/brands"
end

#displays all brands available
get "/brands" do
  @all_brands = Brand.all
  erb(:brands)
end
