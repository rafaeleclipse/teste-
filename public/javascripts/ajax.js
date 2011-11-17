function carregaDetalhes(){

	$.ajax({
	   type: "GET",
	   url: "/admin/detalhes",
	   success: function(resposta){
				$("#detalhes").html(resposta);
	   }
	 });
}