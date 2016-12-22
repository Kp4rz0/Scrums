class ScrumsController < ApplicationController

  def new
    @scrum = Scrum.new
    @NombrePuntos = NombresPunto.all
    @proyectos = Proyecto.where("id in (?)",(ProyectosUsuario.where("usuario_id = ?",session[:usuario_id]).select("proyecto_id")))
  end

  def create
    debugger
    erroress = "a"
    #render plain: params[:usuario].inspect  #muestra los valores que recibe en la ventana
    @scrum = Scrum.new(scrum_params)
    @scrum.fecha_creacion = Time.now
    @scrum.estados_scrum_id = 1
    @scrum.activo = 1
    @puntos = params["scrum"]["puntos_attributes"]
    @i = 0
    @error = ""
    if @scrum.save
      @puntos.each do |desc|
        Punto.create(scrum_id:@scrum.id,nombres_punto_id: @puntos[@i.to_s]["nombres_punto_id"],descripcion:@puntos[@i.to_s]["descripcion"],activo:"1")
        @i = @i+1
    end
      flash[:success] = "Scrum ingresado con éxito"
      redirect_to scrums_path(@scrum)
    else
      render 'new'
    end
  end

  private
    def scrum_params
      params.require(:scrum).permit(:nombre, :descripcion, :proyecto_id)
    end



end
