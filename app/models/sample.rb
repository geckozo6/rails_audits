class Sample < ApplicationRecord
	has_many	:pieces
  belongs_to :equipment
  belongs_to :auditor
  
  validates_presence_of :sampledate,  message: "Story title is required"
	validates :sampledate, format: { with: /([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/,  message: "Inserta un formato de fecha valido"	}
end
