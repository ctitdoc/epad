IO.setSaveXMLFunction(function(uri, doc) {
  //alert(uri);
  response = HTTPTools.postXML(
      'http://editor.fdelahaye.epad.web.dev.bilendi.net/examples/epad/content/epadPOST.php?uri=' + uri,
      doc,
      "UTF-8"
  );
  alert(response);
});
