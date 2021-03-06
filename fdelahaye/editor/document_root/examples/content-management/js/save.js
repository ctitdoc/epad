// This function is called when the save button is pressed, or when the save
// function is called on an XMLDocument.
function mySaveFunction(uri, xmlDocument) {
	// Copy the querystring from uri which is the absolute path to the XML file
	// as specified in StartXopus.aspx.
	// The RegExp replaces everything before and including the ? with an empty string.
	var queryString = uri.replace(/^[^?]+\?/g, '');

	// HTTP POST the XML document to the save.aspx file.
	var result = HTTPTools.postXML('save-xml.aspx?' + queryString, xmlDocument);

	var success = true;

	//check the result
	if(result !== 'Ok') {
		alert(result);
		success = false;
	}

	//reload navigation
	top.frames['navigation'].location.reload();

	// Returning true tells Xopus that save was successful.
	return success;
}

// Register the save function.
IO.setSaveXMLFunction(mySaveFunction);
