class User < ActiveRecord::Base
  has_many :skills, through: :skillsets
end
