class Publisher < ActiveRecord::Base
	validates_presence_of :name
	has_many :magazines
	# SDP: Readup on validating associations to make this code a bit more durable
end
