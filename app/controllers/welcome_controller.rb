class WelcomeController < ApplicationController
  def index
    #@users = User.all
    @jobs = Job.all
  end
end
