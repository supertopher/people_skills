class User < ActiveRecord::Base
  has_many :skillsets
  has_many :skills, through: :skillsets

  def proficiency_for skill_to_find
    x = self.skillsets.find_by_skill_id(skill_to_find.id)
    x
  end

  def set_proficiency_for skill_to_find, value
    x = self.skillsets.find_by_skill_id(skill_to_find.id)
    x.update_attributes(proficiency: value)
  end
end
