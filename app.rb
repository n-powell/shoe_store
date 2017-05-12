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

#deletes store by id
delete "/store/:id/delete" do
  @store = Store.find(params['id'].to_i)
  @store.delete
  redirect "/"
end

#gets store id and routes to edit page
get "/store/:id/edit" do
  @store = Store.find(params['id'].to_i)
  @all_brands = Brand.all
  erb(:edit_store)
end

#performs name update
patch "/store/:id/edit" do
  @store = Store.find(params['id'].to_i)
  name = params['store_name']
  @store.update(name: name)
  erb(:store)
end

post "/store/:id/brands/select" do
  @store = Store.find(params['id'].to_i)
  brand_ids = params.fetch("store_brands")
  brand_ids.map { |brand_id| @store.brands.push(Brand.find(brand_id))  }
  redirect "/store/#{@store.id}"
end

patch "/store/:id/brand/delete" do
  @store = Store.find(params['id'].to_i)
  brand = Brand.find(params['brand_id'])
  @store.brands.delete(brand)
  redirect "/store/#{@store.id}"
end
