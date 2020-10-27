function getJSON(tableRef)
{
	var myData = [];
	var myHeader = [];
	//The static value 2 used below in loop is necessary to only extract the status and email
	for(var i = 0; i < 2; i++)
	{
		myHeader[i] = tableRef.rows[0].cells[i].innerHTML;

	}

	for (var i=1; i < tableRef.rows.length; i++)
	{
		var myRow = tableRef.rows[i];
		var myRowData = {};

		for (var j = 0; j < 2; j++)
		{
			if (j == 0)
			{
				//In the first cell of the row need to extract
				//radio button information
				if (document.getElementById('yes' + i).checked)
				{
					myRowData[myHeader[j]] =  "Accepted";
				}
				else if (document.getElementById('no' + i).checked)
				{
					myRowData[myHeader[j]] = "Denied";

				}
				else{
					break;
					//myRowData[myHeader[j]] = "";
				}
			}
			else {
				//not in the first cell
				myRowData[myHeader[j]] = myRow.cells[j].innerHTML;
			}
		}
		//Only add values whereby the admin checks one of the boxes
		if(Object.keys(myRowData).length != 0)
			myData.push(myRowData);

	}
	return myData;



}




