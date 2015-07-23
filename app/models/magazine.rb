class Magazine < ActiveRecord::Base
	validates_presence_of :title, :publisher_id
	belongs_to :publisher
	has_many :advertisements

end
