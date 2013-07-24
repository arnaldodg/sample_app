class SessionsController < ApplicationController
	
	def new
		respond_to do |format|
			format.html
			format.js
		end
		@msg = "We are together!"
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			# Sign the user in and redirect to his show page
			sign_in user
			redirect_to user
		else
			# Create an eror msg and re-render the signin form
			flash.now[:error] = 'Invalid email/password combination' # not quite right!
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end

end
