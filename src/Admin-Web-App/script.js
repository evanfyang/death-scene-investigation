$(document).on("click","#mySubmit",  function () {
	var myJSON = getJSON(document.getElementById("myTable"));
	$.ajax(
		{
			url: "http://www.cs.uky.edu/~bcty222/499project/updateInvestigators.php",
			data: JSON.stringify(myJSON),
			contentType : "application/json",
			type: "POST",
			success: function(result){
				$("#tableContainer").html( result );

				}

								
		}


	);

});
