class Patent < ActiveRecord::Base
	belongs_to :driver
	belongs_to :user

	# Patents to the context
	PATENTS = [['Capitão', 1], ['Sargento', 2], ['Tenente', 3], ['Major', 4], ['Coronel', 5]]
end
