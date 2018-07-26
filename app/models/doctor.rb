class Doctor < ApplicationRecord
	belongs_to :city, required: false
	has_many :appointments
	has_many :patients, through: :appointments
	has_and_belongs_to_many :specialities

end
