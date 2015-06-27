class Patent < ActiveRecord::Base
	belongs_to :driver
	belongs_to :user

	# Patents to the context
	PATENTS = [['Capitão', 'Capitão'], ['Sargento', "Sargento"], ['Tenente', "Tenente"], ['Major', "Major"], ['Coronel', "Coronel"]]
end
