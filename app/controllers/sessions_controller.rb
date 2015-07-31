class SessionsController < Devise::SessionsController
	skip_before_action :verify_authenticity_token
	def create
		respond_to do |format|
			format.js do
				self.resource = warden.authenticate(auth_options)
				if resource && resource.active_for_authentication?
					sign_in(resource_name, resource)

				else
				end
			end
		end
	end



end
