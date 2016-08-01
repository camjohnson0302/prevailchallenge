class Course < ActiveRecord::Base
	belongs_to :professor, :class_name=>'User', :foreign_key=>'professor_id'
	has_and_belongs_to_many :students, :class_name=>'User'
end
