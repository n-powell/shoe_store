class Brand < ActiveRecord::Base
  has_and_belongs_to_many :stores
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :name, length: { maximum: 100 }
  validates :price, presence: true
  before_create :capitalize
  before_validation :capitalize
  before_update :capitalize


  private
  def capitalize
    self.name = name.capitalize
  end
end
