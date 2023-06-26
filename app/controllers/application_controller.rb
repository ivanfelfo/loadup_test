class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session #handle 422 error
end
