class Game < ActiveRecord::Base
  has_many :copies, dependent: :delete_all
  has_many :users, through: :copies

  scope :games_names_ids, -> {all.map { |g| [g.name, g.id] }}
end
