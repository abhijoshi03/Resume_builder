class Project < ApplicationRecord
	has_one(:experience, dependent: :destroy)
	belongs_to :experience

end
