class Piece < ApplicationRecord
  belongs_to :sample
  
  scope :rejected, -> { where(status: false) }
end
