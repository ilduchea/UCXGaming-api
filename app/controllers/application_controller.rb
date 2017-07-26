class ApplicationController < ActionController::API
  include Response

  rescue_from Mongoid::Errors::Validations do |exception|
    json_response({ message: exception.summary }, 422)
  end
  #
  # rescue_from ActiveRecord::RecordInvalid do |exception|
  #   json_response({ message: exception.message }, :unprocessable_entity)
  # end
end
