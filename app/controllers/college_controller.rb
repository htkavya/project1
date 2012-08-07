class CollegeController < ApplicationController
	def index
        @stu=Student.all
  	end
	def new
		@stu=Student.new
		@m=Subject.find(params[:id])
	end
	def create
		@m=Subject.find(params[:id])
		@stu=@m.students.create(params[:stu])
		@stu.save
		redirect_to :action=>'index'
	end
	def delete
		@stu=Student.find(params[:id])
		@stu.destroy
		redirect_to :action=>'index'
	end
	def sindex
		@sub=Subject.all
	end
	def snew
		@sub=Subject.new
		@n=Student.find(params[:id])
	end
	def screate
		@n=Student.find(params[:id])
		@sub=@n.subjects.create(params[:sub])
		@sub.save
		redirect_to :action=>'sindex'
	end
	def sdelete
		@sub=Subject.find(params[:id])
		@sub.destroy
		redirect_to :action=>'sindex'
	end
	end

