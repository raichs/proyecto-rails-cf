class Admin::DashboardController < ActionController::Base

  # force user authentication
  before_action :authenticate_user!



end 