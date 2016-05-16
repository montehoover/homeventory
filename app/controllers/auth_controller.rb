class AuthController < ApplicationController
def logout
    session[:user_id] = nil
    redirect_to root_path
  end

  def failure
    render plain: "Auth failed"
  end

  def callback
    #get user info back from the Auth provider
    provider_user = request.env['omniauth.auth']
    #save the provided info to our database
    oauthuser = Oauthuser.find_or_create_by(provider_id: provider_user[:uid],
      provider: params[:provider]) do |u|
      u.provider_hash = provider_user['credentials']['token']
      u.name = provider_user['info']['name']
      u.email = provider_user['info']['email']
    end
    #attach a uer id to a the current session
    session[:user_id] = oauthuser.id
    #redirect the user to the homepage
    redirect_to root_path
  end
end
