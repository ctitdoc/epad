
import module namespace page =
  "http://basex.org/modules/bilendi_dictionary"
  at "cms_dictionary_module.xqm";

import module namespace rest = "http://exquery.org/ns/restxq";
declare namespace output="http://www.w3.org/2010/xslt-xquery-serialization";
declare namespace db="http://basex.org/modules/db";

declare option db:intparse "yes";
(:declare option db:dtd "no";:)


(: ======================================================================
   ENDPOINTS RESTXQ
   ====================================================================== :)

(:
names abbreviations used in the code of this module :
'bilendi_dictionary' is abbreviated as 'dict'
:)

(:~
 : This function return the database "add dictionary file" form.
 : @return HTML page
 :)
declare
  %rest:path("/cms/record_dict_file_of_author_form")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
  function record_dict_file_of_author_form()
  as element(Q{http://www.w3.org/1999/xhtml}html)
{
page:record_dict_file_of_author_form()
};


declare
%updating
%rest:path('/cms/record_dictionary_file_of_author_request')
%rest:POST
%rest:form-param("author_sso_pseudo","{$author_sso_pseudo}", "")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")

function record_dictionary_file_of_author_request(
    $author_sso_pseudo as xs:string)
{
page:record_dictionary_file_of_author_request($author_sso_pseudo)
};


declare
%rest:path("/cms/retroconv_text_document_form")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
function retroconv_text_document_form()
as element(Q{http://www.w3.org/1999/xhtml}html)
{
page:retroconv_text_document_form()
};

declare
%updating
%rest:path('/cms/retroconv_text_document_request')
%rest:POST
%rest:form-param("text_document","{$text_document}", "")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
function retroconv_text_document_request(
$text_document as xs:string
)
{
page:retroconv_text_document_request($text_document)
};


(: ========================================================================================================================= :)


declare
%rest:path("/cms/get_resume_for_job_offer_form")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
function get_resume_for_job_offer_form()
as element(Q{http://www.w3.org/1999/xhtml}html)
{
page:get_resume_for_job_offer_form()
};



declare
%updating
%rest:path('/cms/get_resume_for_job_offer_request')
%rest:POST
%rest:form-param("text_document","{$text_document}", "")
%rest:form-param("prePromptFile","{$prePromptFile}", "SchemedTalks/cvForOfferRulesFile_default.txt")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
function get_resume_for_job_offer_request(
$text_document as xs:string,
$prePromptFile as xs:string
)
{
page:get_resume_for_job_offer_request($text_document, $prePromptFile)
};

declare
%updating
%rest:path('/cms/get_resume_for_job_offer_request_json')
%rest:POST
%rest:form-param("text_document","{$text_document}", "")
%rest:form-param("prePromptFile","{$prePromptFile}", "SchemedTalks/cvForOfferRulesFile_default.txt")
%output:method("json")
function get_resume_for_job_offer_request_json(
$text_document as xs:string,
$prePromptFile as xs:string
) {
    page:get_resume_for_job_offer_request_json($text_document, $prePromptFile)
};

(: =================================================================================================================== :)



(:~
 : This function returns the list of document (by default of the 'dictionary' database's root collection)
 : @return HTML page
 :)
declare
  %rest:path("/cms/list_dictionary_request")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
  function list_dictionary_request()
  as element(Q{http://www.w3.org/1999/xhtml}html)
{
page:list_dictionary_request()
};


(:~
 : This function returns the list of document (by default of the 'dictionary' database's root collection)
 : @return HTML page
 :)
declare
  %rest:path("/cms/list_dictionary_request_json")
  %output:method("json")
  function list_dictionary_request_json()
  as array(*)
{
page:list_dictionary_request_json()
};


(:~
 : This function returns the document cms homepage.
 : @return HTML page
 :)
declare
  %rest:path("/cms/dictionary")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
  function dictionary_home_page()
  as element(Q{http://www.w3.org/1999/xhtml}html)
{
page:dictionary_home_page()
};

declare
%updating
%rest:path('/cms/delete_dict_file_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
function delete_dict_file_request(
    $file as xs:string)
{
page:delete_dict_file_request($file)
};

declare
%rest:path('/cms/get_dict_file_content_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("xhtml")
function get_dict_file_content_request(
    $file as xs:string, $ignore as xs:string?) as node()
{
page:get_dict_file_content_request($file,$ignore)
};

declare
%rest:path('/cms/get_dict_file_content_as_markdown_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("text")
function get_dict_file_content_as_markdown_request(
    $file as xs:string) as xs:string
{
page:get_dict_file_content_as_markdown_request($file)
};

declare
%rest:path('/cms/get_dict_file_content_as_resume_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("xhtml")
function get_dict_file_content_as_resume_request(
$file as xs:string, $ignore as xs:string?) as node() (:as element(Q{http://www.w3.org/1999/xhtml}html):) (:as document-node():)
{
page:get_dict_file_content_as_resume_request($file,$ignore)
};

declare
%rest:path('/cms/get_dict_file_content_request_as_skatelectrique')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xhtml")
function get_dict_file_content_request_as_skatelectrique(
$file as xs:string) as node() (:as element(Q{http://www.w3.org/1999/xhtml}html):) (:as document-node():)
{
page:get_dict_file_content_request_as_skatelectrique($file)
};

declare
%rest:path('/cms/get_dict_file_demo_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xhtml")
function get_dict_file_demo_request(
$file as xs:string) as node()
{
page:get_dict_file_demo_request($file)
};

declare
%rest:path('/cms/get_dict_file_content_as_textile_v2_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("text")
function get_dict_file_content_as_textile_v2_request(
    $file as xs:string) as xs:string
{
page:get_dict_file_content_as_textile_v2_request($file)
};

declare
%rest:path('/cms/get_dict_file_content_as_textile_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("text")
function get_dict_file_content_as_textile_request(
    $file as xs:string) as xs:string
{
page:get_dict_file_content_as_textile_request($file)
};

declare
%rest:path('/cms/get_dict_file_content_as_html_file_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("text")
function get_dict_file_content_as_html_file_request(
    $file as xs:string) as xs:string
{
page:get_dict_file_content_as_html_file_request($file)
};


declare
%rest:path('/cms/get_resume_content_as_html_file_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("text")
function get_resume_content_as_html_file_request(
$file as xs:string, $ignore as xs:string?) as xs:string
{
page:get_resume_content_as_html_file_request($file,$ignore)
};


declare
%rest:path('/cms/get_dict_file_content_as_pdf_resume_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("basex")
%output:media-type("application/pdf")
function get_dict_file_content_as_pdf_resume_request(
$file as xs:string, $ignore as xs:string?) as xs:base64Binary
{
page:get_dict_file_content_as_pdf_resume_request($file,$ignore)
};


declare
%rest:path('/cms/get_dict_file_xml_content_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xml")
function get_dict_file_xml_content_request(
    $file as xs:string) as node()
{
page:get_dict_file_xml_content_request($file)
};

declare
%rest:path('/cms/get_dict_file_filtered_content_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("xhtml")
function get_dict_file_filtered_content_request(
$file as xs:string, $ignore as xs:string?) as node()
{
page:get_dict_file_filtered_content_request($file,$ignore)
};

declare
%rest:path('/cms/get_content_as_html_file_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("text")
function get_content_as_html_file_request(
$file as xs:string, $ignore as xs:string?) as xs:string
{
page:get_content_as_html_file_request($file,$ignore)
};

declare
%rest:path('/cms/get_dict_file_content_as_pdf_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("basex")
%output:media-type("application/pdf")
function get_dict_file_content_as_pdf_request(
$file as xs:string, $ignore as xs:string?) as xs:base64Binary
{
page:get_dict_file_content_as_pdf_request($file,$ignore)
};

declare
%rest:path('/cms/get_dict_file_xml_content_request_debug')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("text")
function get_dict_file_xml_content_request_debug(
    $file as xs:string) as xs:string
{
page:get_dict_file_xml_content_request_debug($file)
};


declare
%rest:path('/cms/edit_dict_file_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xhtml")
function edit_dict_file_request(
    $file as xs:string) as node() (:as element(Q{http://www.w3.org/1999/xhtml}html):) (:as document-node():)
{
page:edit_dict_file_request($file)
};


declare
%updating
%rest:path('/cms/save_dict_file_request')
%rest:POST("{$body}")
%rest:query-param("uri","{$uri}", "")
%output:method("text")
function save_dict_file_request(
    $uri as xs:string, $body as document-node())
{
page:save_dict_file_request($uri,$body)
};

declare
%rest:path('/cms/eval_dict_xquery_request')
%rest:POST
%rest:form-param("xquery","{$xquery}", "")
%rest:form-param("result_format","{$result_format}", "")
%output:method("xhtml")
function eval_dict_xquery_request(
$xquery as xs:string, $result_format as xs:string) as node() (:as element(Q{http://www.w3.org/1999/xhtml}html):) (:as document-node():)
{
page:eval_dict_xquery_request($xquery,$result_format)
};

declare
%rest:path('/cms/eval_dict_xquery_as_xml_request')
%rest:POST
%rest:form-param("xquery","{$xquery}", "")
%output:method("xml")
function eval_dict_xquery_as_xml_request(
$xquery as xs:string) as node()
{
page:eval_dict_xquery_as_xml_request($xquery)
};


declare
%rest:path("/cms/eval_dict_xquery_request_form")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
function eval_dict_xquery_request_form()
as element(Q{http://www.w3.org/1999/xhtml}html)
{
page:eval_dict_xquery_request_form()
};


declare
%rest:path('/cms/get_logs_request')
%rest:GET
%output:method("xml")
%output:omit-xml-declaration("no")
function get_logs_request() as element(logs)
{
page:get_logs_request()
};

()