class GroupsController < ApplicationController

	before_action :authenticate_access!
	def index
		@groups = current_access.group.all
	end	

	def new
		@group = Group.new
	end

	def create
		@group = current_access.group.new(name: params[:group][:name])
		if @group.save
			redirect_to groups_path
		end
	end

	def show
		@group = current_access.group.find(params[:id])
		@users = current_access.group.find(@group).user.all
	end
end