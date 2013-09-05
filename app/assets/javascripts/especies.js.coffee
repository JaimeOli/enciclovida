# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

fnFormatDetails = (oTable, nTr) ->
  aData = oTable.fnGetData(nTr)
  sOut = "<table cellpadding=\"5\" cellspacing=\"0\" border=\"0\" style=\"padding-left:50px;\">"
  sOut += "<tr><td>Rendering engine:</td><td>" + aData[1] + " " + aData[4] + "</td></tr>"
  sOut += "<tr><td>Link to source:</td><td>Could provide a link here</td></tr>"
  sOut += "<tr><td>Extra info:</td><td>And any further details here (images etc)</td></tr>"
  sOut += "</table>"
  sOut

jQuery ->
  oTable = $("#especies").dataTable(
    oLanguage:
      sSearch: "Buca en todos los campos de nombre (comunes o cientificos):"
      sInfo: "Mostrando rango: _START_ a _END_ de _TOTAL_ resulatdos"
      sInfoEmpty: "La búsqueda no dio ningún resultado."
      sEmptyTable: "No se encontro ningún resultado."
      sInfoFiltered: "(_MAX_ registros totales)."
      sZeroRecords: "No se encontro ningún resultado."
      sProcessing: "Procesando..."
      oPaginate:
        sFirst: "Primera"
        sNext: "Sig."
        sPrevious: "Ant."
        sLast : "Última"
      sLengthMenu: 'Muestra <select>'+
      '<option value="10">10</option>'+
      '<option value="20">20</option>'+
      '<option value="30">30</option>'+
      '<option value="40">40</option>'+
      '<option value="50">50</option>'+
      '<option value="100">100</option>'+
      '<option value="200">200</option>'+
      '</select> resultados por página'

  #bStateSave: "true"

    aoColumns: [

      mDataProp: "0"
    ,
      mDataProp: "1"
    ,
      mDataProp: "2"
    ,
      mDataProp: "3"
    ,
      mDataProp: "4"
    ,
      mDataProp: "5"
    ,
      mDataProp: "6"
    ,
      mDataProp: "7"
    ,
      mDataProp: "8"
    ,
      mDataProp: "9"
    ,
      mDataProp: "10"
    ,
      mDataProp: "11"
    ,
      mDataProp: "12"
    ,
      mDataProp: "13"
    ,
      mDataProp: "14"
    ,
      mDataProp: "15"
    ,
      mDataProp: "16"
    ,
      mDataProp: "17"
    ,
      mDataProp: "18"
    ,
      mDataProp: "19"
    ,
      mDataProp: "20"
    ,
      mDataProp: "21"
    ,
      mDataProp: "22"
    ,
    ]

    sScrollX: "500px"
    sScrollY: "500px"
    sPaginationType: "full_numbers"
    bJQueryUI: "true"
    bProcessing: "true"
    bServerSide: "true"
    sAjaxSource: $("#especies").data("source")
    aoColumnDefs: [
      bSortable: false
      aTargets: [ 0, 1 ]
    ]

  )

  $("#id_especie").keyup ->
    oTable.fnFilter @value, 1

  $("#nombre").keyup ->
    oTable.fnFilter @value, 2

  $("#fuente").keyup ->
    oTable.fnFilter @value, 10

  $("#nombre_autoridad").keyup ->
    oTable.fnFilter @value, 11

  $("#numero_filogenetico").keyup ->
    oTable.fnFilter @value, 12

  $("#cita_nomenclatural").keyup ->
    oTable.fnFilter @value, 13

  $("#sistema_de_clasificacion").keyup ->
    oTable.fnFilter @value, 14

  $("#anotacion").keyup ->
    oTable.fnFilter @value, 15

  $("#box_especie").change ->
    oTable.fnFilter $(this).val(), 0

  $("#especies_categoria_taxonomica_id").change ->
    oTable.fnFilter $(this).val(), 3

  $("#estatus").change ->
    oTable.fnFilter $(this).val(), 6

  $("#estado_conservacion").keyup ->
    oTable.fnFilter $(this).val(), 7

  $("#nombre_comun").keyup ->
    oTable.fnFilter $(this).val(), 8

  $("#tipos_distribuciones_tipo_distribucion_id").change ->
    oTable.fnFilter $(this).val(), 9

  $("#region").keyup ->
    oTable.fnFilter $(this).val(), 10

  $("#created_at").change ->
    oTable.fnFilter $(this).val(), 16

  $("#updated_at").change ->
    oTable.fnFilter $(this).val(), 17