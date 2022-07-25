class Admin::BaseController < ActionController::Base

  # force user authentication
  before_action :authenticate_user!

  layout 'application'


end 