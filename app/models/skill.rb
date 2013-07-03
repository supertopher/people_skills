class Skill < ActiveRecord::Base
  has_many :users, through: :skillsets
  validates :name, uniqueness: true
end
