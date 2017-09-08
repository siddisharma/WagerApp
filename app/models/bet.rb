class Bet < ApplicationRecord
  has_many :participants
  has_many :payouts
  has_many :users, through: :participants
end
