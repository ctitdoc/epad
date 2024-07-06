module namespace page = 'http://basex.org/modules/bilendi_dictionary';

import module namespace rest = "http://exquery.org/ns/restxq";
declare namespace output="http://www.w3.org/2010/xslt-xquery-serialization";
declare namespace db="http://basex.org/modules/db";
declare namespace update="http://basex.org/modules/update";
declare namespace web="http://expath.org/ns/webapp";
import module namespace conf='http://basex.org/modules/conf'  at 'conf.xqm';
import module namespace xslt='http://basex.org/modules/xslt';
import module namespace admin="http://basex.org/modules/admin";
import module namespace file="http://expath.org/ns/file";
import module namespace proc='http://basex.org/modules/proc';

declare option db:intparse "yes";
(:declare option db:dtd "no";:)

(: Turn whitespace chopping off. :)
declare option db:chop 'no';

(:
names abbreviations used in the code of this module :
'bilendi_dictionary' is abbreviated as 'dict'
:)

(:~
 : This function return the database "add dictionary file" form.
 : @return HTML page
 :)
declare
  %rest:path("/record_dict_file_of_author_form")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
  function page:record_dict_file_of_author_form()
  as element(Q{http://www.w3.org/1999/xhtml}html)
{
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Record document form</title>
  </head>

  <body>
    <p></p>

    <form action="record_dictionary_file_of_author_request" method="post">
      <p>Author pseudo :<input name="author_sso_pseudo"
      title="Author sso pseudo" type="text" /></p>

      <p><input type="submit" /></p>
    </form>
  </body>
</html>
};


declare
%updating
%rest:path('/record_dictionary_file_of_author_request')
%rest:POST
%rest:form-param("author_sso_pseudo","{$author_sso_pseudo}", "")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")

function page:record_dictionary_file_of_author_request(
    $author_sso_pseudo as xs:string)
{
if ($author_sso_pseudo != 'f.delahaye' and $author_sso_pseudo != 'f.delahaye_bpri' and $author_sso_pseudo != 'holy_eboard_build' and $author_sso_pseudo != 'resume_franck_delahaye_fr' and $author_sso_pseudo != 'resume_franck_delahaye') then (
db:output(<html xmlns="http://www.w3.org/1999/xhtml">
            <head>
              <title>Record document request status</title>
              <link type="text/css" rel="stylesheet" href="/static/style.css"/>
            </head>

            <body>
              <h1>"Record document" request status</h1>
              <p>{ $author_sso_pseudo } document has been recorded.</p>

            </body>
          </html>),
          db:replace("dictionary",
          fn:concat("content/dictionary_", $author_sso_pseudo,".xml"),
          fn:concat(conf:content_path(),"/dictionary_",$author_sso_pseudo,".xml"))
          ) else (
db:output(<html xmlns="http://www.w3.org/1999/xhtml">
            <head>
              <title>Record document request status</title>
              <link type="text/css" rel="stylesheet" href="/static/style.css"/>
            </head>

            <body>
              <h1>"Record document" request status</h1>
              <p>{ $author_sso_pseudo } document has not been recorded as its existing version in db is used for authoring demo (try to record the file of another author like 'tartanpion') !</p>

            </body>
          </html>)
          )

};


(:~
 : This function returns the list of document (by default of the 'dictionary' database's root collection)
 : @return HTML page
 :)
declare
  %rest:path("/list_dictionary_request")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
  function page:list_dictionary_request()
  as element(Q{http://www.w3.org/1999/xhtml}html)
{
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Schema driven CMS PoC</title>
    <link type="text/css" rel="stylesheet" href="/static/style.css"/>
  </head>

  <body>
    <div id="readme" style="text-align: justify">
    <h1 style="text-align: left">Schema driven CMS PoC</h1>
    <p style="width:80%">This proof of concept talks about the potential of a CMS driven by document/content schemas.</p>
    <p style="width:80%">The demonstrated concepts and technologies behind the hood exist for decades, are standardized, and fit very well with the new "IA techno wave" (demo to come).</p>
    <p style="width:80%">The target audience is more technologists, as they can evaluate the benefits (or not) of such a solution for their target document authors and users, and less for the latters as... well, it's just a PoC, so it's more difficult for them to see how it could evolve in a complete CMS, yet an <a href="https://en.wikipedia.org/wiki/Minimum_viable_product">MVP</a> solution can be completed in a few weeks.</p>
    <p style="width:80%">The documents below are of various types: application dictionary, skate site page, music software page, resume, work document...</p>
    <p style="width:80%">Their edition is governed by schemas: it defines common element types like paragraph, table, image etc... but also more semantic types, derived from these ones or not, like task descriptions with their status, or even an application's data definition with its validtion constaints and implementation for a software documentation, etc...</p>
    <p style="width:80%">From these types, document struture rules are also defined and the editor is driven by these rules, sothat the author cannot create contents and structures not defined by these types and rules.</p>
    <p style="width:80%">One or more authoring (css) stylesheets can also be defined for these element types, and also (javascript) menus and callbacks (up on element insertion, removal ...), leading to more automatized and productive authoring sessions, as the author does not have to manage styling and makes less repetitive manual tasks while editing the contents of the document:</p>
    <ul style='width:80%'>
        <li>one can click the EDIT links of the documents below to display such a schema driven editor, yet to see the real potential of this editor, a live demo is needed,</li>
        <li>just <a href="mailto://ctitdoc@gmail.com">send an email</a> if you're interested, and we'll organize it.</li>
    </ul>
    <p style="width:80%">Stylesheets can also be defined to format the document for various targets: web site pages (with SEO stuff generated automatically), wikis, PDF/print etc...</p>
    <ul style='width:80%'>
      <li><a href="/static/editor/xopus/xopus.html#/edit_dict_file_request?file=content/dictionary_holy_eboard_build.xml">this electric skateboard document</a>,
           is published as <a href="/get_dict_file_content_request_as_skatelectrique?file=content/dictionary_holy_eboard_build.xml">this web page</a>,</li>
      <li><a href="/static/editor/xopus/xopus.html#/edit_dict_file_request?file=content/dictionary_demo_site_arturia.xml">this music software product</a>,
           is published in <a href="/get_dict_file_demo_request?file=content/dictionary_demo_site_arturia.xml">this web page</a>,</li>
      <li><a href="/static/editor/xopus/xopus.html#/edit_dict_file_request?file=content/dictionary_f.delahaye.xml">this application data dictionary</a>,
           can be published as <a href="/get_dict_file_content_as_markdown_request?file=content/dictionary_f.delahaye.xml">this markdown wiki</a> and can be checked with <a href="https://markdownlivepreview.com/">this online markdown viewer</a>,</li>
      <li><a href="/static/editor/xopus/xopus.html#/edit_dict_file_request?file=content/dictionary_resume_franck_delahaye_fr.xml">this resume</a>,
           can be published as <a href="/get_dict_file_content_as_resume_request?file=content/dictionary_resume_franck_delahaye_fr.xml&amp;ignore=standard">this web page</a> or as <a href="/get_dict_file_content_as_pdf_resume_request?file=content/dictionary_resume_franck_delahaye_fr.xml&amp;ignore=standard">this PDF document</a>.</li>
    </ul>
    <p style="width:80%">The documents are stored in a dedicated database and one can query them using an accurate query language using the element types and struture rules defined to find the exact type of content one is looking for, example : searching "email" returns most of the time poor results, as "email" is so common in documents, but searching for a data definition "email" within an application data dictionary return the exact matches one is looking for:</p>
    <ul style='width:80%'>
      <li>a click on the button "Envoyer" of <a href="/eval_dict_xquery_request_form">this Document query form</a> demonstrates it.</li>
    </ul>
    <p style="width:80%">Another value added feature of such a solution is the ability to manage "applicabilities" to contents of document:</p>
    <ul style='width:80%'><li>click on <a href="/get_dict_file_content_as_pdf_resume_request?file=content/dictionary_resume_franck_delahaye_fr.xml&amp;ignore=standard">the "standard" version of this resume</a>:</li>
        <li>it contains a section "Les technos",</li>
        <li>now click on <a href="/get_dict_file_content_as_pdf_resume_request?file=content/dictionary_resume_franck_delahaye_fr.xml&amp;ignore=alma_lead_web">a specific version of this resume for a given position type or job offer</a>:</li>
        <li>it does not contain the section "Les technos" and its section "Les projet" is different from the standard version,</li>
        <li>the author can edit several versions in a single "multi-versions" document, setting "applicability" attributes to the contents that are applicable only to some versions and should be ignored for others,</li>
        <li>this avoids to have to manage one document for each version and the tedious work of manually copying in each of them, the changes of the contents common to these versions.</li>
    </ul>
    <p style='width:80%;margin-bottom:2em'>... more to come : IA, modular contents, translations, workflows/annotations/releases, access control, word processors integrations, enterprise application integrations, legacy document solutions and formats migrations, paper documents digitization and re-structuring ... => stay tuned !</p>
  </div>
{ for $file in db:list-details('dictionary','content')[text() != 'content/resume.html']  return
<p style="margin-bottom:0.5em">
 {$file/text()} (last modified : {string($file/@modified-date)}) : <a href="{concat('/get_dict_file_content_request?file=', $file/text())}">VIEW</a>,
 <a href="{concat('/static/editor/xopus/xopus.html#/edit_dict_file_request?file=', $file/text())}" target="_blank">EDIT</a>,
 <a href="{concat('/delete_dict_file_request?file=', $file/text())}">DELETE</a>,<br/>
 OR <a href="{concat('/get_dict_file_content_as_markdown_request?file=', $file/text())}" target="_blank">MARKDOWN</a>
 OR <a href="{concat('/get_dict_file_content_as_pdf_request?file=', $file/text())}" target="_blank">PDF</a>
 OR <a href="{concat('/get_dict_file_content_as_resume_request?file=', $file/text())}" target="_blank">RESUME</a>
 OR <a href="{concat('/get_dict_file_content_as_pdf_resume_request?file=', $file/text())}">RESUME PDF</a>,
 OR <a href="{concat('/get_dict_file_content_request_as_skatelectrique?file=', $file/text())}">SKATELECTRIQUE</a>,
 OR <a href="{concat('/get_dict_file_demo_request?file=', $file/text())}" target="_blank">ARTURIA</a>
 OR <a href="{concat('/get_dict_file_content_as_textile_request?file=', $file/text())}" target="_blank">TEXTILE</a>
 OR <a href="{concat('/get_dict_file_content_as_textile_v2_request?file=', $file/text())}" target="_blank">TEXTILE V2</a>
 OR <a href="{concat('/get_dict_file_content_as_html_file_request?file=', $file/text())}" target="_blank">HTML FILE</a>
 OR <a href="{concat('/get_dict_file_xml_content_request?file=', $file/text())}" target="_blank">XML</a>
</p>
}
  </body>
</html>
};

(:~
 : This function returns the document cms homepage.
 : @return HTML page
 :)
declare
  %rest:path("/dictionary")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
  function page:dictionary_home_page()
  as element(Q{http://www.w3.org/1999/xhtml}html)
{
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Schema driven CMS homepage</title>
    <link type="text/css" rel="stylesheet" href="/static/style.css"/>
    <style type="text/css">/*<![CDATA[*/
    #main_iframe {padding-left :180px;position:fixed;height:100%;width:90%;top:0px;left:0px;right:0px;bottom:0px; z-index:1}
    nav {position:fixed; left:0px; top:0px; bottom:0px; width:160px; background:#333; color:#fff; z-index:2}
  /*]]>*/</style>
  </head>

  <body><nav> <ul>
      <li><a href="/list_dictionary_request"
      style="color:white" target="product_iframe">list documents</a></li>

      <li><a
      href="/record_dict_file_of_author_form"
      style="color:white" target="product_iframe">record document file of
      author</a></li>

      <li><a
      href='/eval_dict_xquery_request_form'
      style="color:white" target="product_iframe">eval document query</a></li>

      <li><a
      href='/get_logs_request'
      style="color:white" target="product_iframe">get logs</a></li>

    </ul> </nav><iframe id="main_iframe" name="product_iframe"
  src="/list_dictionary_request"
  style="border:0" scrolling="auto"></iframe></body>
</html>
};

declare
%updating
%rest:path('/delete_dict_file_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
function page:delete_dict_file_request(
    $file as xs:string)
{
(: if ($file != 'content/dictionary_f.delahaye.xml' ) then ( :)
if (contains($file,'training')) then (
db:output(<html xmlns="http://www.w3.org/1999/xhtml">
            <head>
              <title>Delete file request status</title>
            </head>

            <body>
              <h1>"Delete file" request status</h1>
              <p>File { $file } has been deleted.</p>

            </body>
          </html>),
          db:delete("dictionary", $file)
          ) else (
db:output(<html xmlns="http://www.w3.org/1999/xhtml">
            <head>
              <title>Delete file request status</title>
            </head>

            <body>
              <h1>"Delete file" request status</h1>
              <p>File { $file } has not been deleted as it is used for authoring demo !</p>

            </body>
          </html>))
};

declare
%rest:path('/get_dict_file_content_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("xhtml")
function page:get_dict_file_content_request(
    $file as xs:string, $ignore as xs:string?) as node()
{
xslt:transform(
page:filter_ignore(fn:doc(fn:concat("dictionary/", $file))/node(), $ignore),
fn:concat(conf:xsl_path(),"/practices.xsl")
)/node()
};

declare
%rest:path('/get_dict_file_content_as_markdown_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("text")
function page:get_dict_file_content_as_markdown_request(
    $file as xs:string) as xs:string
{
xslt:transform-text(
xslt:transform(fn:doc(fn:concat("dictionary/", $file))/node(),
fn:concat(conf:xsl_path(),"/practices.xsl")
)/node(),
fn:concat(conf:xsl_path(),"/xhtml2markdown.xsl"))
};

declare
%rest:path('/get_dict_file_content_as_resume_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("xhtml")
function page:get_dict_file_content_as_resume_request(
$file as xs:string, $ignore as xs:string?) as node() (:as element(Q{http://www.w3.org/1999/xhtml}html):) (:as document-node():)
{
xslt:transform(page:filter_ignore(fn:doc(fn:concat("dictionary/", $file))/node(), $ignore),
fn:concat(conf:xsl_path(),"/resume.xsl")
)/node()

};

declare function page:filter_ignore($element as element (), $ignore as xs:string?) {
  if (count(page:match_one_of(string($element/@ignore_for), $ignore)) > 0)
  then ()
  else
    element {node-name($element)}
    {$element/@*[name()!='ignore_for'],
    for $child in $element/ node ()
    return if ($child instance of element ())
      then page:filter_ignore($child, $ignore)
      else $child
    }
};

declare function page:match_one_of($match_values as xs:string, $match_list as xs:string) {
  distinct-values(tokenize($match_values,"\s+")[.=tokenize($match_list, "\s+")])
};


declare
%rest:path('/get_dict_file_content_request_as_skatelectrique')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xhtml")
function page:get_dict_file_content_request_as_skatelectrique(
$file as xs:string) as node() (:as element(Q{http://www.w3.org/1999/xhtml}html):) (:as document-node():)
{
xslt:transform(fn:doc(fn:concat("dictionary/", $file))/node(),
fn:concat(conf:xsl_path(),"/skatelectrique.xsl")
)/node()
};

declare
%rest:path('/get_dict_file_demo_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xhtml")
function page:get_dict_file_demo_request(
$file as xs:string) as node()
{
xslt:transform(fn:doc(fn:concat("dictionary/", $file))/node(),
fn:concat(conf:xsl_path(),"/demo.xsl")
)/node()
};

declare
%rest:path('/get_dict_file_content_as_textile_v2_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("text")
function page:get_dict_file_content_as_textile_v2_request(
    $file as xs:string) as xs:string
{
xslt:transform-text(
xslt:transform(fn:doc(fn:concat("dictionary/", $file))/node(),
fn:concat(conf:xsl_path(),"/practices.xsl")
)/node(),
fn:concat(conf:xsl_path(),"/xhtml2markdown.xsl"),map { "format": "textile" })
};

declare
%rest:path('/get_dict_file_content_as_textile_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("text")
function page:get_dict_file_content_as_textile_request(
    $file as xs:string) as xs:string
{
try {
let $markdownContent := xslt:transform-text(
                        xslt:transform(fn:doc(fn:concat("dictionary/", $file))/node(),
                        fn:concat(conf:xsl_path(),"/practices.xsl")
                        )/node(),
                        fn:concat(conf:xsl_path(),"/xhtml2markdown.xsl")),
                        $filePath := "/tmp/" || $file || ".markdown",
                        $statusMkdir := proc:system(  'mkdir',('-p', '/tmp/content')),
                        $status := file:write-text($filePath, $markdownContent)
                        return proc:system(  'markdown2textile.sh', ($filePath))
    } catch proc:error {
      'Error: ' || $err:description
    }
};

declare
%rest:path('/get_dict_file_content_as_html_file_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("text")
function page:get_dict_file_content_as_html_file_request(
    $file as xs:string) as xs:string
{
try {
let $htmlContent := xslt:transform(fn:doc(fn:concat("dictionary/", $file))/node(),
                        fn:concat(conf:xsl_path(),"/practices.xsl")
                        )/node(),
                        $filePath := "/tmp/" || $file || ".html",
                        $statusMkdir := proc:system(  'mkdir',('-p', '/tmp/content')),
                        $status := file:write($filePath, $htmlContent)
                        return $filePath
    } catch proc:error {
      'Error: ' || $err:description
    }
};


declare
%rest:path('/get_resume_content_as_html_file_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("text")
function page:get_resume_content_as_html_file_request(
$file as xs:string, $ignore as xs:string?) as xs:string
{
try {
let $htmlContent := page:filter_collapse_expand(
                        page:get_dict_file_content_as_resume_request($file, $ignore)),
$filePath := "/tmp/" || $file || ".html",
$statusMkdir := proc:system(  'mkdir',('-p', '/tmp/content')),
$status := file:write($filePath, $htmlContent)
return $filePath
} catch proc:error {
'Error: ' || $err:description
}
};


declare function page:filter_collapse_expand($element as element ()) {

element {node-name($element)}
{
  if ($element/@class="section" and $element/@style)
  then
    $element/@*[name()!='style']
  else
    $element/@*,
  for $child in $element/ node ()
  return
    if ($child instance of element ())
    then
      if (local-name($child) = 'a' and (contains($child/@id,"_expand") or contains($child/@id,"_collapse")))
      then
        ()
      else
        page:filter_collapse_expand($child)
    else $child
}
};



declare
%rest:path('/get_dict_file_content_as_pdf_resume_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("raw")
%output:media-type("application/pdf")
function page:get_dict_file_content_as_pdf_resume_request(
$file as xs:string, $ignore as xs:string?) as xs:base64Binary
{
  try {
    let $filePath := page:get_resume_content_as_html_file_request($file, $ignore)
    return file:read-binary(proc:system( 'html2pdf.sh', ($filePath)))
  } catch proc:error {
    'Error: ' || $err:description
  }
};


declare
%rest:path('/get_dict_file_xml_content_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xml")
function page:get_dict_file_xml_content_request(
    $file as xs:string) as node()
{
fn:doc(fn:concat("dictionary/", $file))/node()
};

declare
%rest:path('/get_dict_file_filtered_content_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("xhtml")
function page:get_dict_file_filtered_content_request(
$file as xs:string, $ignore as xs:string?) as node()
{
xslt:transform(page:filter_ignore(fn:doc(fn:concat("dictionary/", $file))/node(), $ignore),
fn:concat(conf:xsl_path(),"/practices.xsl")
)/node()

};

declare
%rest:path('/get_content_as_html_file_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("text")
function page:get_content_as_html_file_request(
$file as xs:string, $ignore as xs:string?) as xs:string
{
try {
let $htmlContent := page:filter_collapse_expand(
page:get_dict_file_filtered_content_request($file, $ignore)),
$filePath := "/tmp/" || $file || ".html",
$statusMkdir := proc:system(  'mkdir',('-p', '/tmp/content')),
$status := file:write-text($filePath, "<!DOCTYPE html>"),
$status2 := file:append($filePath, $htmlContent)
return $filePath
} catch proc:error {
'Error: ' || $err:description
}
};

declare
%rest:path('/get_dict_file_content_as_pdf_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%rest:query-param("ignore","{$ignore}", "")
%output:method("raw")
%output:media-type("application/pdf")
function page:get_dict_file_content_as_pdf_request(
$file as xs:string, $ignore as xs:string?) as xs:base64Binary
{
try {
let $filePath := page:get_content_as_html_file_request($file, $ignore)
return file:read-binary(proc:system( 'html2pdf.sh', ($filePath)))
} catch proc:error {
'Error: ' || $err:description
}
};

declare
%rest:path('/get_dict_file_xml_content_request_debug')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("text")
function page:get_dict_file_xml_content_request_debug(
    $file as xs:string) as xs:string
{
string(fn:doc(fn:concat("dictionary/", $file))/node())
};


declare
%rest:path('/edit_dict_file_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xhtml")
function page:edit_dict_file_request(
    $file as xs:string) as node() (:as element(Q{http://www.w3.org/1999/xhtml}html):) (:as document-node():)
{
let $editor_path := '/static/editor',
$practices_editor_config_path := fn:concat($editor_path,'/examples/epad')
return
<html>
  <head>
    <title>Rich Text Demo</title>

    <!-- Start Xopus -->
    <script type="text/javascript" charset="UTF-8" src="{$editor_path}/xopus/xopus.js"></script>
    <link type="text/css" rel="stylesheet" href="/static/style.css"/>
  </head>
  <body>
    <div id="category_options" onclick="event.cancelBubble = true; ;return false;">
      <div class="boxside-left"></div>
      <div class="boxside-right"></div>
    </div>
    <!-- The Xopus Canvas -->
    <div xopus="true" autostart="true">
      <xml>
        <x:config version="1.0" xmlns:x="http://www.xopus.com/xmlns/config">
          <x:pipeline xml="/get_dict_file_xml_content_request?file={$file}" xsd="{$practices_editor_config_path}/xsd/coaching.xsd">
            <x:view name="WYSIWYG View">
              <x:transform xsl="{$practices_editor_config_path}/xsl/prepareXIncludes.xsl"/>
              <x:resolveXIncludes/>
              <x:transform xsl="{$practices_editor_config_path}/xsl/practices.xsl"/>
            </x:view>
            <x:view name="Tags On View">
              <x:transform xsl="{$practices_editor_config_path}/xsl/prepareXIncludes.xsl"/>
              <x:resolveXIncludes/>
              <x:transform xsl="{$practices_editor_config_path}/xsl/practices.xsl"/>
              <x:tagTransform/>
            </x:view>
            <x:view name="XML View">
              <x:treeTransform/>
            </x:view>
            <x:view name="Raw View">
              <x:transform xsl="{$practices_editor_config_path}/xsl/raw.xsl"/>
            </x:view>
            <x:view name="HTML View">
               <x:transform xsl="{$practices_editor_config_path}/xsl/practices.xsl"/>
               <x:treeTransform/>
            </x:view>
           </x:pipeline>
          <x:javascript src="{$practices_editor_config_path}/js/meta.js"/>
          <x:javascript src="{$practices_editor_config_path}/js/internal-navigation.js"/>
          <x:javascript src="{$practices_editor_config_path}/js/save_dict.js"/>
          <x:import src="{$practices_editor_config_path}/config.xml"/>
        </x:config>
      </xml>
    </div>
  </body>
</html>
};


declare
%updating
%rest:path('/save_dict_file_request')
%rest:POST("{$body}")
%rest:query-param("uri","{$uri}", "")
%output:method("text")
function page:save_dict_file_request(
    $uri as xs:string, $body as document-node())
{
(: exemple $uri = 'http://dev.dmz.loc:8984/get_dict_file_xml_content_request?file=content/dictionary_f.delahaye.xml':)

  db:output(fn:concat("Save request status : ", page:file_from_uri($uri), " correctly saved in the database.")),
        if (contains($uri, 'training') or ($body/*[1]/@ignore_for = 'Tihar92$')) then
           db:replace("dictionary",
             page:file_from_uri($uri),
             copy $content := $body/node()
             modify(
               delete node $content/@ignore_for,
               for $code in $content//code
                 return replace node $code with element code {
                   if ($code/@text-align) then attribute {'text-align'} {$code/@text-align} else (),
                   for $n in $code/node()
                   return page:replace_lf_by_br($n)
               }
             ) return $content
          )
        else ()
};


declare function page:replace_lf_by_br($string) {
if (not($string instance of text() or $string instance of xs:string))
then $string
else
if (contains($string,'&#10;')) then
(fn:substring-before($string,'&#10;'), element br {},
page:replace_lf_by_br(fn:substring-after($string,'&#10;'))
)
else
$string
};

declare function page:file_from_uri($uri as xs:string) as xs:string
{fn:replace($uri,".*\?file=","")};

declare
%rest:path('/eval_dict_xquery_request')
%rest:POST
%rest:query-param("xquery","{$xquery}", "")
%rest:query-param("result_format","{$result_format}", "")
%output:method("xhtml")
function page:eval_dict_xquery_request(
$xquery as xs:string, $result_format as xs:string) as node() (:as element(Q{http://www.w3.org/1999/xhtml}html):) (:as document-node():)
{
if ($result_format != 'xml') then (
xslt:transform(xquery:eval($xquery),
fn:concat(conf:xsl_path(),"/practices.xsl")
)/node()
) else (
<rest:forward>/eval_dict_xquery_as_xml_request</rest:forward>
)
};

declare
%rest:path('/eval_dict_xquery_as_xml_request')
%rest:POST
%rest:query-param("xquery","{$xquery}", "")
%output:method("xml")
function page:eval_dict_xquery_as_xml_request(
$xquery as xs:string) as node()
{
xquery:eval($xquery)
};


declare
%rest:path("/eval_dict_xquery_request_form")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
function page:eval_dict_xquery_request_form()
as element(Q{http://www.w3.org/1999/xhtml}html)
{
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Document query form</title>
</head>

<body>
<p>Write below your query on document collection and click on submit to evaluate it.</p>

<form action="eval_dict_xquery_request" method="post">

<p>Result format : <select name="result_format">
<option value="html" checked="checked">HTML</option>
<option value="xml">XML</option>
</select></p>

<p><textarea rows="50" cols="200" name="xquery"
title="Query on document collection">
(: example xquery to get "data_definition" elements of "dictionary" documents containing 'email',
replace "/dictionary/data_definition" by "/document/section" to get main "section" elements of "document" documents containing 'email',
learn XQuery to find whatever can be found with more/less precise/complex x queries :
https://www.w3schools.com/xml/xquery_intro.asp
:)
&lt;document&gt;
&lt;h&gt;Query results :&lt;/h&gt;
&#123;
for $x in collection('dictionary')/dictionary/data_definition[ . contains text 'email']
return $x
&#125;
&lt;/document&gt;
</textarea></p>
<p><input type="submit" /></p>
</form>
</body>
</html>
};
