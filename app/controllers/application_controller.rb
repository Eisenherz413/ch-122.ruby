class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  before_action :set_locale

  private
  #
  # def set_locale
  #   I18n.locale = params[:locale] || I18n.default_locale
  # end

  def default_url_options
    { locale: I18n.locale }
  end
  # around_action :switch_locale
  after_action :store_action

  private

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
  def set_locale
    locale = params[:locale].to_s.strip.to_sym
    I18n.locale = I18n.available_locales.include?(locale) ?
                    locale :
                    I18n.default_locale
  end
  #
  # def default_url_options
  #   {locale: I18n.locale}
  # end
  # def extract_locale
  #   parsed_locale = params[:locale]
  #   I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  #     # parsed_locale.to_sym :
  # end
  # def switch_locale(&action)
  #   locale = params[:locale] || I18n.default_locale
  #   I18n.with_locale(locale, &action)
  # end
  # respond_to :html, :json

end
