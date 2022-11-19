class ApplicationController < ActionController::Base
  add_flash_types :succes, :error, :warning, :message
  protect_from_forgery prepend: true

  before_action :authenticate_user!
end
