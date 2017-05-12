require "bundler/setup"
Bundler.require :default
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/" do
  erb :index
end

get "/stores" do
  @all_stores = Store.all
  erb(:stores)
end

get "/store/new" do
  @all_stores = Store.all
  erb(:new_store)
end

post "/store/new" do
  store_name = params['store_name']
  new_store = Store.create(name: store_name)
  erb(:index)
end
