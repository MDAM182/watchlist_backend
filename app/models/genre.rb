class Genre < ApplicationRecord
  has_many :programs, dependent: :destroy
end
