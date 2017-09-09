class MembersController < ApplicationController
	
	def index
		@members = Member.paginate(page: params[:page])
	end
	
	def new
		@member = Member.new
	end
	
end
