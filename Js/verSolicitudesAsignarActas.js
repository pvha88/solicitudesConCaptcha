$(document).ready(function(){
	 ///
	 tabla =  $("#tablaVerAsignarActas").dataTable( {
        "bProcessing": true,
        "bServerSide": true,
        "sAjaxSource": "../controlador/tablaVerAsignarActas.php", 
        "fnServerParams": function (aoData) {
			aoData.push(
			{ "name":"idusuario", value: $("#idusuario").val() },
			{ "name": "anio", "value": $("#anio option:selected").val() }
			);
		},
        "oLanguage": {
                        "sUrl": "../Js/DataTables-1.9.4/media/language/spanish.txt",
                        "sInfoThousands": "."
                      },
        "sPaginationType": "full_numbers",
        "sScrollY": "600",
        "sScrollX": "90%",                                                    
        "bScrollCollapse": true,
        "info": false,
         columnDefs:[ {
            targets: [2,3,4],
            bSortable:false
            } ]
     });
 });
function refrescarBandeja(){
    tabla.api().ajax.reload();
}