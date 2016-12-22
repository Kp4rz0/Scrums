class SessionsController < ApplicationController

  def new
    @usuario = Usuario.new
  end

  def create
    #render 'new' .downcase es para hacerlas minusculas
    user = Usuario.find_by(rut: params[:session][:rut])
    if user && user.authenticate(params[:session][:password])
      session[:usuario_id] = user.id
      session[:rut] = params[:session][:rut]
      session[:tipos_Usuario_id] = user.tipos_usuario_id
      flash[:success] = "Loeagudo satisfactoriamente"
      redirect_to root_path
    else
      flash.now[:danger] = "Verifique la información de ingreso."
      render 'new'
    end
  end

  def destroy
    session[:usuario_id] = nil
    flash[:success] = "Sesión finalizada"
  end
end
