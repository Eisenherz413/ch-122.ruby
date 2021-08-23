class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  before_action :set_locale
  after_action :store_action

  def store_action
    return unless request.get?
    if request.path != "/users/sign_in" &&
      request.path != "/users/sign_up" &&
      request.path != "/users/password/new" &&
      request.path != "/users/password/edit" &&
      request.path != "/users/confirmation" &&
      request.path != "/users/sign_out" &&
      !request.xhr? # don't store ajax calls
      store_location_for(:user, request.fullpath)
    end
  end
  private

  def default_url_options
    {locale: I18n.locale}
  end
  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ?
      parsed_locale.to_sym :
      nil
  end

  respond_to :html, :json

end
