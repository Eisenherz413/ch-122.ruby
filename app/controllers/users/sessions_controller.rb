# frozen_string_literal: true
class Users::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token
  def new
    super
  end
end
