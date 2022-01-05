class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :store_must_have_men_and_or_women_apparels

  def store_must_have_men_and_or_women_apparels
    if womens_apparel != true && mens_apparel != true
      errors.add(:mens_apparel, "Men and/or Women apparel must be set to true")
    end
  end
end
