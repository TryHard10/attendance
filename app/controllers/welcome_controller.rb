class WelcomeController < ApplicationController
	def login
		redirect_to new_access_session_path
	end
end