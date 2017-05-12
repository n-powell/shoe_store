class Store < ActiveRecord::Base
  has_and_belongs_to_many :brands
  validates :name, presence: true
  before_create :capitalize
  validates :name, uniqueness: true
  validates :name, length: { maximum: 100 }


  private
  def capitalize
    self.name = name.capitalize
  end
end
