class UsuariosController < ApplicationController

  def index
    @usuarios = Usuario.all
  end

  def new
    @usuario = Usuario.new
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def create
    erroress = "a"
    #render plain: params[:usuario].inspect  #muestra los valores que recibe en la ventana
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      flash[:notice] = "Usuario ingresado con éxito"
      redirect_to usuario_path(@usuario)
    else
      render 'new'
    end
  end

  def update
    @usuario = Usuario.find(params[:id])
    if @usuario.update(usuario_params)
      flash[:notice] = "Usuario modificado con éxito"
      redirect_to usuario_path(@usuario)
    else
      render 'edit'
    end
  end

  def show
    @usuario = Usuario.find(params[:id])
  end

  private
    def usuario_params
      params.require(:usuario).permit(:nombre,:paterno,:materno,:rut,:fecha_nacimiento,:tipo_usuario_id,:carrera_id,:estado_usuario_id,:activo)
    end

end
