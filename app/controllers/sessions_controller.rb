class SessionsController < ApplicationController



def create
    auth = request.env["omniauth.auth"]
                                     pp auth

if auth[:provider] == "identity"
    user = Password.find(auth["uid"]) 
    session[:user_id] = user.id
  end

    unless @identity = Identity.find_from_hash(auth)
    # Create a new user or add an auth to existing user, depending on
    # whether there is already a user signed in.
    @identity = Identity.create_from_hash(auth, current_user)
    end
#     self.current_user = @identity.user
  # Log the authorizing user in.
  self.current_user = @identity.user



    redirect_to user_url(current_user), :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end