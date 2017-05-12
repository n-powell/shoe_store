class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores
  validates :name, presence: true
  validates :price, presence: true
  before_create :capitalize
  validates :name, uniqueness: true


  private
  def capitalize
    self.name = name.capitalize
  end
end
