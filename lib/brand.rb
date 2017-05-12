class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  before_create(:capitalize)


  private
  def capitalize
    self.name = name.capitalize
  end
end
