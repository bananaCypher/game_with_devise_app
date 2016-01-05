class Game < ActiveRecord::Base
  has_many :copies
  has_many :users, through: :copies
end
