class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  before_action :set_i18n_locale_from_params

  protected

    def set_i18n_locale_from_params
      if params[:locale]
        if params[:locale].eql? 'en' or params[:locale].eql? 'es'
          flash[:notice] = nil
          I18n.locale = params[:locale]
        else
          flash[:notice] = "#{params[:locale]} translation not available"
        end
      end
    end

    def default_url_options
      { locale: I18n.locale }
    end

end
