class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   skip_before_filter :verify_authenticity_token
   after_action :set_access_control_headers

 def set_access_control_headers
   headers['Access-Control-Allow-Origin'] = "*"
   headers['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(",")
 end
 
end
