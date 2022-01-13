class Project < ApplicationRecord
	belongs_to :experience
	has_one(:experience, dependent: :destroy)
end
