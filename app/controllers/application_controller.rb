class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  before_action :set_locale
  # around_action :switch_locale
  after_action :store_action
  rescue_from CanCan::AccessDenied do |exeption|
    flash[:error] = 'Access denied'
    redirect_to rooms_url
  end
  private

  def default_url_options
    { locale: I18n.locale }
  end

  private
  def store_action
    return unless request.get?
    if request.path != "/en/users/sign_in" &&
      request.path != "/en/users/sign_up" &&
      request.path != "/en/users/password/new" &&
      request.path != "/en/users/password/edit" &&
      request.path != "/en/users/confirmation" &&
      request.path != "/en/users/sign_out" &&
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

  def default_url_options
    {locale: I18n.locale}
  end
  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
      # parsed_locale.to_sym :
  end
  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end
  respond_to :html, :json

end
