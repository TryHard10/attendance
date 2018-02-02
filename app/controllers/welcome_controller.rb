class WelcomeController < ApplicationController
	def login
		
		if access_signed_in?
			redirect_to "/panel"
		else			
			redirect_to new_access_session_path		
		end		
	end	
end