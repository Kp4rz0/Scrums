class UsuariosController < ApplicationController
  before_action :set_usuario, only:[:edit, :update, :show, :destroy]

  def index
    @usuarios = Usuario.all
  end

  def new
    @usuario = Usuario.new
  end

  def edit
  end

  def create
    erroress = "a"
    #render plain: params[:usuario].inspect  #muestra los valores que recibe en la ventana
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      flash[:success] = "Usuario ingresado con éxito"
      redirect_to usuario_path(@usuario)
    else
      render 'new'
    end
  end

  def update
    if @usuario.update(usuario_params)
      flash[:success] = "Usuario modificado con éxito"
      redirect_to usuario_path(@usuario)
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @usuario.destroy
    redirect_to usuarios_path
    flash[:danger] = "Usuario " + @usuario.nombre + " " + @usuario.paterno + " eliminado con éxito"
  end

  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  private
    def usuario_params
      params.require(:usuario).permit(:nombre,:paterno,:materno,:rut,:fecha_nacimiento,:tipo_usuario_id,:carrera_id,:estado_usuario_id,:activo)
    end

end
