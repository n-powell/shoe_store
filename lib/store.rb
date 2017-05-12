class Store < ActiveRecord::Base
  has_and_belongs_to_many :brands
  validates :name, presence: true
  validates :name, length: { maximum: 100 }
  validates :name, uniqueness: true
  before_create :capitalize
  before_update :capitalize
  before_validation :capitalize
  before_create :capitalize



  private
  def capitalize
    self.name = name.capitalize
  end
end
