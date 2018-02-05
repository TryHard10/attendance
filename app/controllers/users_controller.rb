class UsersController < ApplicationController
	before_action :authenticate_access!

	def index		
	end	

	def new
		@group = current_access.group.find(params[:group_id])
		@user = User.new
	end

	def create
		@c_group = current_access.group.find(params[:group_id])
		@user = current_access.group.find(params[:group_id]).user.new(name: params[:user][:name])
		if @user.save
			redirect_to group_path(@c_group)
		end
	end
end