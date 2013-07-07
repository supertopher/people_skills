class Skill < ActiveRecord::Base
  has_many  :skillsets
  has_many  :users, through: :skillsets
  validates :name, uniqueness: true

  def user_with_proficiency proficiency_value
    user_id = Skillset.find_by_proficiency(proficiency_value).user_id
    User.find(user_id)
  end
end
