class Magazine < ActiveRecord::Base
	# SDP: Do not validate the foreign key, validate the publisher
	validates_presence_of :title, :publisher_id
	belongs_to :publisher
	has_many :advertisements

end
