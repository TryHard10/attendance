class PanelController < ApplicationController

	before_action :authenticate_access!

	def index
		@access = Access.all
	end	
	def show
		
	end
end