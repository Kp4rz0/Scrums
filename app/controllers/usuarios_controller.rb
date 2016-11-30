class UsuariosController < ApplicationController
  before_action :set_usuario, only:[:edit, :update, :show, :destroy]

  def index
    @usuarios = Usuario.all
  end

  def new
    @usuario = Usuario.new
    @instituciones = Institucione.all
  end

  def edit
    @carrera = Carrera.find(@usuario.carrera_id)
    @departamento = Departamento.find(@carrera.departamento_id)
    @facultad = Facultade.find(@departamento.facultade_id)
    @institucion = Institucione.find(@facultad.institucione_id)

    @facultades = Institucione.find(@institucion.id).facultades
    @departamentos = Facultade.find(@facultad.id).departamentos
    @carreras = Departamento.find(@departamento.id).carreras
  end

  def create
    erroress = "a"
    #render plain: params[:usuario].inspect  #muestra los valores que recibe en la ventana
    @instituciones = Institucione.all
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      flash[:success] = "Usuario ingresado con éxito"
      redirect_to usuario_path(@usuario)
    else
      render 'new'
    end
  end

  def update
    @carrera = Carrera.find(@usuario.carrera_id)
    @departamento = Departamento.find(@carrera.departamento_id)
    @facultad = Facultade.find(@departamento.facultade_id)
    @institucion = Institucione.find(@facultad.institucione_id)

    @facultades = Institucione.find(@institucion.id).facultades
    @departamentos = Facultade.find(@facultad.id).departamentos
    @carreras = Departamento.find(@departamento.id).carreras

    if @usuario.update(usuario_params)
      flash[:success] = "Usuario modificado con éxito"
      redirect_to usuario_path(@usuario)
    else
      render 'edit'
    end
  end

  def show
    @carrera = Carrera.find(@usuario.carrera_id)
    @departamento = Departamento.find(@carrera.departamento_id)
    @facultad = Facultade.find(@departamento.facultade_id)
    @institucion = Institucione.find(@facultad.institucione_id)
  end

  def destroy
    @usuario.destroy
    redirect_to usuarios_path
    flash[:danger] = "Usuario " + @usuario.nombre + " " + @usuario.paterno + " eliminado con éxito"
  end

  def set_usuario
    @instituciones = Institucione.all
    @usuario = Usuario.find(params[:id])
  end

  private
    def usuario_params
      params.require(:usuario).permit(:nombre,:paterno,:materno,:rut,:tipo_usuario_id,:fecha_nacimiento,:carrera_id,:estado_usuario_id,:activo, :email, :password)
    end
  ##Métodos llamados desde AJAX
public
  def llenarFacultades
    parametro = params[:institucion]
    @facultades = Institucione.find(parametro["id"]).facultades
    respond_to do |format|
      format.html {}
      format.js   {}
      format.json { render json: @facultades}
    end
  end

public
  def llenarDepartamentos
    parametro = params[:facultad]
    @departamentos = Facultade.find(parametro["id"]).departamentos
    respond_to do |format|
      format.html {}
      format.js   {}
      format.json { render json: @departamentos}
    end
  end

public
  def llenarCarreras
    parametro = params[:departamento]
    @carreras = Departamento.find(parametro["id"]).carreras
    respond_to do |format|
      format.html {}
      format.js   {}
      format.json { render json: @carreras}
    end
  end

end
