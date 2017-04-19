class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(japanese italian chinese french belgian) }

  before_validation do
    if self.category
      self.category = self.category.downcase
    end
  end

end
