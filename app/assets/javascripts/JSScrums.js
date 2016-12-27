function SelectProyectoChange(){
  if ($("#scrum_proyecto_id option:selected").val() != "")
    $("#ScrumContainer").show();
  else
    $("#ScrumContainer").hide();
}

function SelectProyectos_ScrumsIndex_Change(){
	if ($("#SelectProyectos_ScrumsIndex option:selected").val() != "0"){
	  var param = $('#SelectProyectos_ScrumsIndex option:selected').attr('value');
      $.ajax({
        url: "/scrums/selectProyecto",
        type: "POST",
        dataType: 'json',
        data: {proyecto: { id: param }},
        success: function(resp){
          RespSelectProyectos_ScrumsIndex_Change(resp);
        },
        error: function (e){
          err = e.message; }
      });


	    $("#ScrumContainer").show();

	}
  else
    $("#ScrumContainer").hide();
}

function RespSelectProyectos_ScrumsIndex_Change(a)
{
  var codigo="";
  for(var i = 0; i<a.length; i++){
    codigo += "<tr><td>" + a[i]["nombre"] + "</td>";
    codigo += "<td>" + a[i]["descripcion"] + "</td>";
    codigo += "<td><input type='date' value='" + a[i]["fecha_creacion"].substring(0,10) + "' disabled='true'></td>";
    if(a[i]["fecha_envio"]== null || a[i]["fecha_envio"] == "" || a[i]["fecha_envio"]== nill)
      codigo += "<td class='td-icon'>" + "<a class='fa fa-pencil' href='/scrums/" + a[i]["id"] + "/edit'>" + "</td>";
    else
      codigo += "<td class='td-icon'>" + "<a class='fa fa-eye' href='/scrums/" + a[i]["id"] + "'>" + "</td>";
    if(a[i]["fecha_revision"]== null || a[i]["fecha_revision"] == "" || a[i]["fecha_revision"]== nill){
      codigo += "<td class='td-icon'>" + "<a class='fa fa-clock-o' href='#'>" + "</td>";
      codigo += "<td class='td-icon'>" + "<a class='fa fa-trash' data-confirm='Estas seguro?' rel='nofollow' data-method='delete'  href='#'>" + "</td>";

    }
    else{
      codigo += "<td class='td-icon'>" + "<a class='fa fa-eye' href='/scrums/" + a[i]["id"] + "/response'>" + "</td>";
      codigo += "<td class='td-icon'>" + "<a class='fa fa-ban' href='#'>" + "</td>";

    }
    "</tr>";
  }
  $("#Tablebody_ScrumsIndex").html(codigo);
  $("#Tabla").dataTable();

}
