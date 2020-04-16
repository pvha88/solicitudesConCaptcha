$(document).ready(function(){
	 ///
	 tabla =  $("#tablaVerUsuarios").dataTable( {
        "bProcessing": true,
        "bServerSide": true,
        "sAjaxSource": "../controlador/tablaVerUsuarios.php", 
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
            targets: [4,5],
            bSortable:false
            } ]
     });
 });
function refrescarBandeja(){
    tabla.api().ajax.reload();
}