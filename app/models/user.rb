class User < ApplicationRecord
   has_many :rounds
   has_many :holes, through: :rounds
   has_many :reviews
end
