class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
	has_many :taught_courses, :class_name=>'Course', :foreign_key=>'professor_id'
	has_and_belongs_to_many :enrolled_courses, :class_name=>'Course'
	has_many :classmates, :through=>:enrolled_courses, :source=>:students, :class_name=>'User'
	#It probably makes more sense to access classmates through individual courses to get classmates by class.
	#This association will return all classmates from all enrolled courses
end
