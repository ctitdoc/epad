<?php
$xmlstr = file_get_contents('php://input');

//$xmlstr = iconv('UTF-16', 'UTF-8', $xmlstr);

$dom = new domDocument;
$dom->loadXML($xmlstr);

$uri=$_REQUEST['uri'];
//for test :
//$uri='http://editor.fdelahaye.epad.web.dev.bilendi.net/examples/epad/content/epad.xml';
$docPath=preg_replace('/.*\/examples\/epad\/content\/(.*)/', '$1', $uri);

$saved = $dom->save($docPath);

echo "The number of bytes written :".$saved;

?>