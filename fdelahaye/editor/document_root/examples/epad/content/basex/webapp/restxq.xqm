(:~
 : This module contains some basic examples for RESTXQ annotations
 : @author BaseX Team
 :)
module namespace page = 'http://basex.org/modules/web-page';

import module namespace rest = "http://exquery.org/ns/restxq";
declare namespace output="http://www.w3.org/2010/xslt-xquery-serialization";
declare namespace db="http://basex.org/modules/db";
declare namespace update="http://basex.org/modules/update";
declare namespace web="http://expath.org/ns/webapp";
import module namespace conf='http://basex.org/modules/conf'  at 'conf.xqm';
import module namespace xslt='http://basex.org/modules/xslt';
import module namespace admin="http://basex.org/modules/admin";
import module namespace file="http://expath.org/ns/file";
import module namespace dict='http://basex.org/modules/bilendi_dictionary'  at 'bilendi_dictionary.xqm';
import module namespace proc='http://basex.org/modules/proc';

declare option db:intparse "yes";
(:declare option db:dtd "no";:)

(: Turn whitespace chopping off. :)
declare option db:chop 'no';

(:~
 : This function generates the welcome page.
 : @return HTML page
 :)
declare
  %rest:path("")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
  function page:start()
  as element(Q{http://www.w3.org/1999/xhtml}html)
{
  <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <title>BaseX HTTP Services</title>
      <link rel="stylesheet" type="text/css" href="static/style.css"/>
    </head>
    <body>
      <div class="right"><img src="static/basex.svg" width="96"/></div>
      <h2>BaseX HTTP Services</h2>
			<div>Welcome to the BaseX HTTP Services, which allow you to...</div>
			<ul>
				<li>Query and modify databases via <a href="http://docs.basex.org/wiki/REST">REST</a> (try <a href='rest'>here</a>)</li>
				<li>Browse and update resources via <a href="http://docs.basex.org/wiki/WebDAV">WebDAV</a></li>
				<li>Create web applications and services with <a href="http://docs.basex.org/wiki/RESTXQ">RESTXQ</a></li>
			</ul>

      <p>This page was generated by RESTXQ. It facilitates the
      use of XQuery as a server-side processing language for the Web.</p>

      <h3>Example 1</h3>
      <p>The following links return different results.
      Both are generated by the same RESTXQ function:</p>
      <ul>
        <li><a href="hello/World">/hello/World</a></li>
        <li><a href="hello/Universe">/hello/Universe</a></li>
      </ul>

      <h3>Example 2</h3>
      <p>The next example presents how form data is processed via RESTXQ and the POST method:</p>
      <form method="post" action="form">
        <p>Your message:<br />
        <input name="message" size="50"></input>
        <input type="submit" /></p>
      </form>

      <h3>Example 3</h3>
      <p>The source code of the file that created this page
      (<code>{ static-base-uri() }</code>) is shown below:</p>
      <pre>{ unparsed-text(static-base-uri()) }</pre>
    </body>
  </html>
};

(:~
 : This function returns an XML response message.
 : @param $world  string to be included in the response
 : @return response element
 :)
declare
  %rest:path("/hello/{$world}")
  %rest:GET
  function page:hello(
    $world as xs:string)
    as element(response)
{
  <response>
    <title>Hello { $world }!</title>
    <time>The current time is: { current-time() }</time>
  </response>
};

(:~
 : This function returns the result of a form request.
 : @param  $message  message to be included in the response
 : @param $agent  user agent string
 : @return response element
 :)
declare
  %rest:path("/form")
  %rest:POST
  %rest:form-param("message","{$message}", "(no message)")
  %rest:header-param("User-Agent", "{$agent}")
  function page:hello-postman(
    $message as xs:string,
    $agent   as xs:string*)
    as element(response)
{
  <response type='form'>
    <message>{ $message }</message>
    <user-agent>{ $agent }</user-agent>
  </response>
};

(:~
 : This function return the database creation form.
 : @return HTML page
 :)
declare
  %rest:path("/database_creation_form")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
  function page:db_creation_form()
  as element(Q{http://www.w3.org/1999/xhtml}html)
{
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Database creation form</title>
  </head>

  <body>
    <p></p>

    <form action="database_creation_request" method="post">
      <p>Name of the database to create :<input name="database_name"
      title="database name" /></p>

      <p><input type="submit" /></p>
    </form>
  </body>
</html>
};

(:~
 : This function executes a database_creation_request.
 : @param  $database_name  name of the database to create
 : @return @return redirect to /database_creation_status page
 :)

declare
(: %updating :)
%rest:path('/database_creation_request')
%rest:POST
%rest:form-param("database_name","{$database_name}", "(no database name)")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")

function page:database_creation_request(
    $database_name as xs:string)  as element(Q{http://www.w3.org/1999/xhtml}html)
{

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Database creation request status</title>
  </head>

  <body>
    <p>{ $database_name } database creation request status KO : this request is not supported yet, sorry.</p>

  </body>
</html>

(: commented this non working function : error : [XUST0001] List expression: all expressions must be updating or return an empty sequence.
db:create($database_name),
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Database creation request status</title>
  </head>

  <body>
    <p>{ $database_name } database creation request status OK.</p>

  </body>
</html>
end of function commenting :)
};



(:~
 : This function return the database "add practices file" form.
 : @return HTML page
 :)
declare
  %rest:path("/record_practices_file_of_author_form")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
  function page:record_practices_file_of_author_form()
  as element(Q{http://www.w3.org/1999/xhtml}html)
{
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Record practices file of author form</title>
  </head>

  <body>
    <p></p>

    <form action="record_practices_file_of_author_request" method="post">
      <p>Author pseudo :<input name="author_sso_pseudo"
      title="Author sso pseudo" type="text" /></p>

      <p><input type="submit" /></p>
    </form>
  </body>
</html>
};


declare
%updating
%rest:path('/record_practices_file_of_author_request')
%rest:POST
%rest:form-param("author_sso_pseudo","{$author_sso_pseudo}", "")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")

function page:record_practices_file_of_author_request(
    $author_sso_pseudo as xs:string)
{
db:output(<html xmlns="http://www.w3.org/1999/xhtml">
            <head>
              <title>Record practices file of author request status</title>
              <link type="text/css" rel="stylesheet" href="/static/style.css"/>
            </head>

            <body>
              <h1>"Record practices file of author" request status</h1>
              <p>{ $author_sso_pseudo } practices file has been recorded.</p>

            </body>
          </html>),
          db:replace("practices",
          fn:concat("content/practices_", $author_sso_pseudo,".xml"),
          fn:concat(conf:content_path(),"/practices_",$author_sso_pseudo,".xml"))

};


(:~
 : This function returns the list of practices files (by default of the 'practices' database's root collection)
 : @return HTML page
 :)
declare
  %rest:path("/list_practices_request")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
  function page:list_practices_request()
  as element(Q{http://www.w3.org/1999/xhtml}html)
{
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>List of practices files (by default of the 'practices' database's root collection)</title>
    <link type="text/css" rel="stylesheet" href="/static/style.css"/>
  </head>

  <body>
    <h1>List of practices files</h1>
{ for $file in db:list-details('practices','content') return
<p>
 {$file/text()} (last modified : {string($file/@modified-date)}) : <a href="{concat('/get_file_content_request?file=', $file/text())}">VIEW</a>,
 OR <a href="{concat('/delete_file_request?file=', $file/text())}">DELETE</a>,
 OR <a href="{concat('/static/editor/xopus/xopus.html#/edit_file_request?file=', $file/text())}" target="_blank">EDIT</a>
 OR <a href="{concat('/get_file_content_as_markdown_request?file=', $file/text())}" target="_blank">MARKDOWN</a>
</p>
}
  </body>
</html>
};

(:~
 : This function returns the practices cms homepage.
 : @return HTML page
 :)
declare
  %rest:path("/practices")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
  function page:practices_home_page()
  as element(Q{http://www.w3.org/1999/xhtml}html)
{
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Practices cms homepage</title>
    <link type="text/css" rel="stylesheet" href="/static/style.css"/>
    <style type="text/css">/*<![CDATA[*/
    #main_iframe {padding-left :180px;position:fixed;height:100%;width:100%;top:0px;left:0px;right:0px;bottom:0px; z-index:1}
    nav {position:fixed; left:0px; top:0px; bottom:0px; width:160px; background:#333; color:#fff; z-index:2}
  /*]]>*/</style>
  </head>

  <body><nav> <ul>
      <li><a href="/list_practices_request"
      style="color:white" target="product_iframe">list practices</a></li>

      <li><a
      href="/record_practices_file_of_author_form"
      style="color:white" target="product_iframe">record practices file of
      author</a></li>

      <li><a
      href='/get_logs_request'
      style="color:white" target="product_iframe">get logs</a></li>

      <li><a
      href='/record_xsl_request'
      style="color:white" target="product_iframe">record xsl</a></li>

    </ul> </nav><iframe id="main_iframe" name="product_iframe"
  src="/list_practices_request"
  style="border:0"></iframe></body>
</html>
};

declare
%updating
%rest:path('/delete_file_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
function page:delete_file_request(
    $file as xs:string)
{
if ($file != 'content/practices_f.delahaye.xml') then (
db:output(<html xmlns="http://www.w3.org/1999/xhtml">
            <head>
              <title>Delete file request status</title>
            </head>

            <body>
              <h1>"Delete file" request status</h1>
              <p>File { $file } has been deleted.</p>

            </body>
          </html>),
          db:delete("practices", $file)
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
%rest:path('/get_file_content_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xhtml")
function page:get_file_content_request(
    $file as xs:string) as node() (:as element(Q{http://www.w3.org/1999/xhtml}html):) (:as document-node():)
{
xslt:transform(fn:doc(fn:concat("practices/", $file))/node(),
fn:concat(conf:xsl_path(),"/practices.xsl")
)/node()
};

declare
%rest:path('/get_file_content_as_markdown_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("text")
function page:get_file_content_as_markdown_request(
    $file as xs:string) as xs:string
{
xslt:transform-text(
xslt:transform(fn:doc(fn:concat("practices/", $file))/node(),
fn:concat(conf:xsl_path(),"/practices.xsl")
)/node(),
fn:concat(conf:xsl_path(),"/xhtml2markdown.xsl"))
};

declare
%rest:path('/get_file_xml_content_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xml")
function page:get_file_xml_content_request(
    $file as xs:string) as node()
{
fn:doc(fn:concat("practices/", $file))/node()
};


declare
%rest:path('/edit_file_request')
%rest:GET
%rest:query-param("file","{$file}", "")
%output:method("xhtml")
function page:edit_file_request(
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
          <x:pipeline xml="/get_file_xml_content_request?file={$file}" xsd="{$practices_editor_config_path}/xsd/coaching.xsd">
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
          <x:javascript src="{$practices_editor_config_path}/js/save.js"/>
          <x:import src="{$practices_editor_config_path}/config.xml"/>
        </x:config>
      </xml>
    </div>
  </body>
</html>
};


declare
%updating
%rest:path('/record_xsl_request')
%rest:GET
%output:method("xhtml")
%output:omit-xml-declaration("no")
%output:doctype-public("-//W3C//DTD XHTML 1.1//EN")
%output:doctype-system("http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd")
function page:record_xsl_request()
{
db:output(<html xmlns="http://www.w3.org/1999/xhtml">
            <head>
              <title>Record xsl status</title>
            </head>

            <body>
              <p>xsl has been recorded.</p>

            </body>
          </html>),
for $file in file:list(conf:xsl_path())
(: add does not replace document with existing path but adds a second document with the same path, replace does it :)
(:return db:add("practices",fn:concat(conf:xsl_path(),'/', $file),'xsl'):)
return db:replace("practices",fn:concat('xsl','/', $file),fn:concat(conf:xsl_path(),'/', $file))
};


declare
%rest:path('/get_logs_request')
%rest:GET
%output:method("xml")
%output:omit-xml-declaration("no")
function page:get_logs_request() as element(logs)
{
<logs>
{for $log in admin:logs() return admin:logs($log)}
</logs>
};


declare
%updating
%rest:path('/save_file_request')
%rest:POST("{$body}")
%rest:query-param("uri","{$uri}", "")
%output:method("text")
function page:save_file_request(
    $uri as xs:string, $body as document-node())
{
(: exemple $uri = 'http://dev.dmz.loc:8984/get_file_xml_content_request?file=content/practices_f.delahaye.xml':)
db:output(fn:concat("Save request status : ", page:file_from_uri($uri), " correctly saved in the database.")),
db:replace("practices",
          page:file_from_uri($uri),
          $body)
};

declare function page:file_from_uri($uri as xs:string) as xs:string
{fn:replace($uri,".*\?file=","")};