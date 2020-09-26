class Entry < ApplicationRecord
  # Association 
  belongs_to :category 

  # Validations 
  validates :calories, :proteins, :carbonhydrates, :fats, :meal_type, :category_id, presence: true 


  scope :by_feature, -> { where(feature: true) }

  def day 
    self.created_at.strftime("%b %e, %Y")
  end 
end
