class Round < ApplicationRecord
   has_many :holes
   belongs_to :user
end
