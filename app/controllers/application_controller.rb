class ApplicationController < ActionController::Base
    before_action :set_locale
    helper_method :logged_in?, :current_user

    def current_user
      if session[:usuario_id]
        @usuarioLogado = Usuario.find(session[:usuario_id])
      end
    end
  
    def logged_in?
      !!current_user
    end
  
    def authorized
      redirect_to login_path unless logged_in?
    end

    def set_locale
      locale = params[:locale] || cookies[:locale]
      if locale.present?
        I18n.locale = locale
        cookies[:locale] = { value: locale, expires: 30.days.from_now}
      end
     end

end
