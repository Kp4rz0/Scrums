class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



  helper_method :current_user, :logged_in?, :redireccionar

  def current_user
    if(session[:usuario_id]!=nil)
      @current_user ||= Usuario.find(session[:usuario_id]) if session[:rut]
    end
  end

  def logged_in?
    !!current_user #boolean que ve si hay o no un usuario conectado
  end

  def redireccionar
    redirect_to '/login'
  end
  def require_user
    if !logged_in?
      flash[:danger] = "Debes loguearte"
      redirect_to root_path
    end
  end
  def pasa
    flash[:danger] = "pasa"
  end
end
