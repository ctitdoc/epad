module namespace conf = 'http://basex.org/modules/conf';

declare function conf:epad_path() as xs:string
{'/Volumes/Samsung_T5/dev/epad/fdelahaye/editor/document_root/examples/epad'};

declare function conf:content_path() as xs:string
{ fn:concat(conf:epad_path(),'/content') };

declare function conf:xsl_path() as xs:string
{fn:concat(conf:epad_path(),'/content/basex/webapp/static/editor/examples/epad/xsl')};

