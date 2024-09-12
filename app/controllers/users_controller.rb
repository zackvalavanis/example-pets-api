class UsersController < ApplicationController
  def create 
    user = User.new( 
      name: params[:name],
      email: params[:email],
      password: parrams[:password]
    )
    if user.save
      render json: { message: 'User has been created.'}
    else 
      render json: { error: errors.full_messages }
    end 
  end
end