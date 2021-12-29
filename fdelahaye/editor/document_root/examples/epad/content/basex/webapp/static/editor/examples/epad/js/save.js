IO.setSaveXMLFunction(function(uri, doc) {
  //alert(uri);
  response = HTTPTools.postXML(
      '/save_file_request?uri=' + uri,
      doc,
      "UTF-8"
  );
  alert(response);
});
