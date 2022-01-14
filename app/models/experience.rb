class Experience < ApplicationRecord
	has_many(:project, dependent: :destroy)
	belongs_to :profile
end
