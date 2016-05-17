class JobsController < ApplicationController
  
  def index
    @users = User.all
  end

end
