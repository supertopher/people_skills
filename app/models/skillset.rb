class Skillset < ActiveRecord::Base
  belongs_to :users
  belongs_to :skills
end
