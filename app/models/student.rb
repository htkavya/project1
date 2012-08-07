class Student < ActiveRecord::Base
	has_and_belongs_to_many :subjects
	validates_uniqueness_of :name,:address
end
