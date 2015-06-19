class Task < ActiveRecord::Base
	belongs_to :user

	def to_s
		print user_id, " ", name, " ", status, "\n"
	end
end
