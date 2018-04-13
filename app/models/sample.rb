class Sample < ApplicationRecord
	has_many	:pieces
  belongs_to :equipment
  belongs_to :auditor
end
