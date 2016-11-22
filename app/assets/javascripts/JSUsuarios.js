function llenarFacultades()
{
  var err="";
  var param = $('#SelectInstituciones option:selected').attr('value');
    $.ajax({
    url: "/usuarios/llenarFacultades",
    type: "POST",
    dataType: 'json',
    data: {institucion: { id: param }},
    success: function(resp){
      RespLlenarFacultades(resp);
    },
    error: function (e){
      err = e.message; }
  });
}
function RespLlenarFacultades(resp)
{
  for(var i=0;i<resp.length;i++){
    $('#SelectFacultades').append($("<option></option>").attr("value",resp[i]["id"]).text(resp[i]["tag"] + " | " + resp[i]["descripcion"]));
  }
}

function llenarDepartamentos()
{
  var err="";
  var param = $('#SelectFacultades option:selected').attr('value');
    $.ajax({
      url: "/usuarios/llenarDepartamentos",
      type: "POST",
      dataType: 'json',
      data: {facultad: { id: param }},
      success: function(resp){
        RespLlenarDepartamentos(resp);
      },
      error: function (e){
        err = e.message; }
    });
}
function RespLlenarDepartamentos(resp)
{
  for(var i=0;i<resp.length;i++){
    $('#SelectDepartamentos').append($("<option></option>").attr("value",resp[i]["id"]).text(resp[i]["tag"] + " | " + resp[i]["descripcion"]));
  }
}

function llenarCarreras()
{
  var err="";
  var param = $('#SelectDepartamentos option:selected').attr('value');
    $.ajax({
      url: "/usuarios/llenarCarreras",
      type: "POST",
      dataType: 'json',
      data: {departamento: { id: param }},
      success: function(resp){
        RespLlenarCarreras(resp);
      },
      error: function (e){
        err = e.message; }
    });
}
function RespLlenarCarreras(resp)
{
  for(var i=0;i<resp.length;i++){
    $('#usuario_carrera_id').append($("<option></option>").attr("value",resp[i]["id"]).text(resp[i]["tag"] + " | " + resp[i]["descripcion"]));
  }
}
