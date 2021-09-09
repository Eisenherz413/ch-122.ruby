class ApplicationController < ActionController::Base
  before_action :set_locale
  # around_action :switch_locale

  private
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
