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
    <title>Record dictionary file of author form</title>
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
if ($author_sso_pseudo != 'f.delahaye') then (
db:output(<html xmlns="http://www.w3.org/1999/xhtml">
            <head>
              <title>Record dictionary file of author request status</title>
              <link type="text/css" rel="stylesheet" href="/static/style.css"/>
            </head>

            <body>
              <h1>"Record dictionary file of author" request status</h1>
              <p>{ $author_sso_pseudo } dictionary file has been recorded.</p>

            </body>
          </html>),
          db:replace("dictionary",
          fn:concat("content/dictionary_", $author_sso_pseudo,".xml"),
          fn:concat(conf:content_path(),"/dictionary_",$author_sso_pseudo,".xml"))
          ) else (
db:output(<html xmlns="http://www.w3.org/1999/xhtml">
            <head>
              <title>Record dictionary file of author request status</title>
              <link type="text/css" rel="stylesheet" href="/static/style.css"/>
            </head>

            <body>
              <h1>"Record dictionary file of author" request status</h1>
              <p>{ $author_sso_pseudo } dictionary file has not been recorded as its existing version in db is used for authoring demo (try to record the file of another author like 'tartanpion') !</p>

            </body>
          </html>)
          )

};


(:~
 : This function returns the list of dictionary files (by default of the 'dictionary' database's root collection)
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
    <title>List of dictionary files (by default of the 'dictionary' database's root collection)</title>
    <link type="text/css" rel="stylesheet" href="/static/style.css"/>
  </head>

  <body>
    <h1>List of dictionary files</h1>
    <p>These dictionaries define Bilendi businesses terms managed in Bilendi applications.</p>
    <p style='margin-bottom:2em'>One has by default one dictionary per dictionary author, and each author manages different entries (this default workflow can be changed).</p>

{ for $file in db:list-details('dictionary','content') return
<p>
 {$file/text()} (last modified : {string($file/@modified-date)}) : <a href="{concat('/get_dict_file_content_request?file=', $file/text())}">VIEW</a>,
 OR <a href="{concat('/delete_dict_file_request?file=', $file/text())}">DELETE</a>,
 OR <a href="{concat('/static/editor/xopus/xopus.html#/edit_dict_file_request?file=', $file/text())}" target="_blank">EDIT</a>
 OR <a href="{concat('/get_dict_file_content_as_markdown_request?file=', $file/text())}" target="_blank">MARKDOWN</a>
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
 : This function returns the dictionary cms homepage.
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
    <title>Bilendi dictionary cms homepage</title>
    <link type="text/css" rel="stylesheet" href="/static/style.css"/>
    <style type="text/css">/*<![CDATA[*/
    #main_iframe {padding-left :180px;position:fixed;height:100%;width:100%;top:0px;left:0px;right:0px;bottom:0px; z-index:1}
    nav {position:fixed; left:0px; top:0px; bottom:0px; width:160px; background:#333; color:#fff; z-index:2}
  /*]]>*/</style>
  </head>

  <body><nav> <ul>
      <li><a href="/list_dictionary_request"
      style="color:white" target="product_iframe">list dictionaries</a></li>

      <li><a
      href="/record_dict_file_of_author_form"
      style="color:white" target="product_iframe">record dictionary file of
      author</a></li>

      <li><a
      href='/get_logs_request'
      style="color:white" target="product_iframe">get logs</a></li>

    </ul> </nav><iframe id="main_iframe" name="product_iframe"
  src="/list_dictionary_request"
  style="border:0"></iframe></body>
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
if ($file != 'content/dictionary_f.delahaye.xml') then (
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
              <p>File { $file } has not been deleted as it is used for authoring demo (try to delete the file of another author like 'tartanpion') !</p>

            </body>
          </html>))
};

declare
%rest:path('/get_dict_file_content_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xhtml")
function page:get_dict_file_content_request(
    $file as xs:string) as node() (:as element(Q{http://www.w3.org/1999/xhtml}html):) (:as document-node():)
{
xslt:transform(fn:doc(fn:concat("dictionary/", $file))/node(),
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
           db:replace("dictionary",
          page:file_from_uri($uri),
          copy $content := $body/node()
          modify(
              for $code in $content//code
              return replace node $code with element code {
              if ($code/@text-align) then attribute {'text-align'} {$code/@text-align} else (),
              for $n in $code/node()
              return page:replace_lf_by_br($n)
              }
              ) return $content
          )
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
