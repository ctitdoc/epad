module namespace page = 'http://basex.org/modules/bilendi_dictionary';

import module namespace rest = "http://exquery.org/ns/restxq";
declare namespace err="http://www.w3.org/2005/xqt-errors";
declare namespace output="http://www.w3.org/2010/xslt-xquery-serialization";
declare namespace db="http://basex.org/modules/db";
declare namespace update="http://basex.org/modules/update";
declare namespace web="http://expath.org/ns/webapp";
import module namespace conf='http://basex.org/modules/conf'  at 'conf.xqm';
import module namespace xslt='http://basex.org/modules/xslt';
import module namespace admin="http://basex.org/modules/admin";
import module namespace file="http://expath.org/ns/file";
import module namespace proc='http://basex.org/modules/proc';
import module namespace http='http://expath.org/ns/http-client';
import module namespace json='http://basex.org/modules/json';
import module namespace xquery = "http://basex.org/modules/xquery";


(:
names abbreviations used in the code of this module :
'bilendi_dictionary' is abbreviated as 'dict'
:)

(:~
 : This function return the database "add dictionary file" form.
 : @return HTML page
 :)
declare function page:record_dict_file_of_author_form()
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


declare %updating function page:record_dictionary_file_of_author_request(
    $author_sso_pseudo as xs:string)
{
if ($author_sso_pseudo != 'f.delahaye' and $author_sso_pseudo != 'f.delahaye_bpri' and $author_sso_pseudo != 'holy_eboard_build' and $author_sso_pseudo != 'resume_franck_delahaye_fr' and $author_sso_pseudo != 'resume_franck_delahaye') then (
update:output(<html xmlns="http://www.w3.org/1999/xhtml">
            <head>
              <title>Record document request status</title>
              <link type="text/css" rel="stylesheet" href="/static/style.css"/>
            </head>

            <body>
              <h1>"Record document" request status</h1>
              <p>{ $author_sso_pseudo } document has been recorded.</p>

            </body>
          </html>),
          db:put("dictionary",
          fn:concat(conf:content_path(),"/dictionary_",$author_sso_pseudo,".xml"),
          fn:concat("content/dictionary_", $author_sso_pseudo,".xml"))
          ) else (
update:output(<html xmlns="http://www.w3.org/1999/xhtml">
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


declare function page:retroconv_text_document_form()
as element(Q{http://www.w3.org/1999/xhtml}html)
{
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Text Document retroconversion form</title>
</head>

<body>
<div width="90%">
<pre> </pre>
<p>Below is a raw text of a resume.</p>
<p>Clicking on "Restructure" button triggers the restructure processing:</p>
<p>The text is submited to an AI.</p>
<p>The resume document schema is also provided to the AI: this schema defines and describes the content types of a resume: the different sections of a CV: contact, skills, cursus, experiences with company, period ...</p>
<p>The AI analyses both the raw text contents and this schema, and assigns to these raw contents, the proper content types defined in the schema, resulting in a (XML) tagged document, that can be automatically edited, displayed (HTML/PDF) and searched, according to the schema.</p>
<p>Put the text of your resume in this text area (or play with the default one):</p>
<form action="retroconv_text_document_request" method="post">
<p><input title="Restructure" value="Restructure" type="submit" /> (<i>Please wait: restructure processing may take a few minutes and rerun in case of error/time out).</i>)</p>
<p><textarea name="text_document"
title="Resume in text format" type="text" cols="120" rows="40">Contact
Franck Delahaye
email:franck_delahaye@yahoo.fr
Professional summary
Senior IT software engineer with over 25 years of experience in enterprise application integration, high-traffic Internet
platforms and structured content systems. Strong expertise in XML / XSLT / XQuery, search engines, SQL &amp; NoSQL
databases, ERP/CRM/PIM integrations and microservices/data-centric architectures. Comfortable working with both
technical and business stakeholders, leading migrations of legacy platforms and coaching development teams on
modern practices.
Key skills
XML, XSLT, XQuery, SGML, structured document systems, CMS and EDMS.
XML-aware &amp; NoSQL databases (BaseX, Berkeley DB, dbXML), full-text search engines (Lucene, Vespa).
Enterprise application integration: ERP (Odoo), PIM, CRM, BI, payment workflows, EBICS/SEPA banking
protocols, health-care data &amp; HL7.
Web &amp; backend frameworks: Java/J2EE/Spring, PHP/Symfony &amp; Yii, Python/Odoo, Rust/WASM (PoC-level).
DevOps &amp; CI/CD: GitLab, GitHub, Docker, AWS, virtualized and container-based environments.
Architecture design, legacy platform migrations, multi-site and multi-country deployments, component-based
and customizable platforms.
Technical leadership &amp; mentoring, agile practices (Scrum, TDD, CMMI-inspired), technical pre-sales and RFP
responses.
Multi-lingual documentation &amp; publishing chains: schema-driven content, Web &amp; PDF output (XSL-FO/
PostScript), internationalization.
Professional experience
Senior Solutions Architect &amp; Developer- Cosmobilis / Bilendi / Arturia / Made In Design - Grenoble, France
- 2011–2025
Design, development and maintenance of multi-country e-commerce, loyalty and paneling platforms
based on PHP/Symfony with rich back-offices, product catalogs and partner integrations.
Integration of enterprise systems: ERP (Odoo), PIM, CRM, marketing campaign tools, marketplaces,
payment providers, BI and ETL tools.
Implementation of REST APIs and microservice architectures, progressive migration of legacy platforms
(PHP/Symfony versions, technical &amp; functional refactoring).
Close collaboration with business teams (marketing, logistics, finance, customer support) to analyse
requirements, manage backlogs and plan iterations.
Technical mentoring and coaching of developers (code reviews, best practices, framework guidance).
Contribution to target architecture and IT roadmap (in-house ESB, Talend data flows, marketplace
integrations, application landscape diagrams).
Technology watch and PoC work on new stacks (Rust/WASM, web components, Ballerina for API
orchestration, etc.).
Solutions Architect &amp; Technical Lead / Developer- Kelkoo, Ositech, HCForum, Schneider Electric, Cap
Gemini - 2000–2010
EDMS/CMS/BPM and technical publishing projects (automotive, energy, aeronautics, health-care,
industry) from design to production.
Deployment of full-text search and XML-aware repositories (Lucene, Vespa, XML databases) for large
document and data volumes.
ERP/CRM/PIM and document management integrations (Documentum and other solutions), project
management and team leadership.
Technical proposals for RFPs, architecture design and customer advisory on solution choices.
Software Engineer - Content &amp; Document Systems- Airbus, STMicroelectronics, CS Group, AIS
Technologies - 1991–2000
C/C++ and SGML/XML development on large-scale technical documentation systems (tens of thousands
of pages).
Design and implementation of processing chains: import, validation, transformation, publishing (Web &amp;
print).
Work on printing formats (PostScript, HP-GL, PCL), SGML/XML parsers and document databases.
Education &amp; training
Engineering degree - Polytech Grenoble, major in IT &amp; automation
DEUG A (general science degree) - Université Joseph Fourier, Grenoble
Scientific high school diploma - Grenoble
Languages
French (native), English (professional), basic German, Russian and Nepali.
Interests
Nature, discovering other cultures, and outdoor sports &amp; activities (trekking, downhill longboarding, snowboarding).
</textarea></p>
</form>
</div>
</body>
</html>
};

declare %updating function page:retroconv_text_document_request(
$text_document as xs:string
) {

let $payload :=
    [
      map {
        "type": "OARequest",
        "prePromptFile": "SchemedTalks/OACVRetroconvRules.txt",
        "prompt": $text_document
      }
    ],
    $request :=
<http:request
method='post' timeout='900'>
<http:header name="Content-Type" value="application/json; charset=utf-8"/>
<http:header name="Accept" value="application/json"/>
<http:body media-type="application/json"/>
</http:request>

let $response := http:send-request($request, "http://www.sitems.org:16387/schemed_talks", $payload)
let $jsonText := $response[2]
let $wrapped := concat("<content>", $jsonText, "</content>")
let $parsed := parse-xml($wrapped)
let $document := $parsed/node()/document
let $currentTime := page:sanitize-datetime(fn:current-dateTime())


return
(
db:put(
"dictionary",
$document,
concat('content/dictionary_retroconversion_demo_',$currentTime,'.xml')
),
update:output(
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Restructure document request status</title>
<link type="text/css" rel="stylesheet" href="/static/style.css"/>
</head>
<body>
<pre> </pre>
<pre> </pre>
<pre> </pre>
<p>Text has been restructured as XML document content/dictionary_retroconversion_demo_{$currentTime}.xml:
<span><a href="{concat('/static/editor/xopus/xopus.html#/cms/edit_dict_file_request?file=', 'content/dictionary_retroconversion_demo_',$currentTime,'.xml')}" target="_blank">EDIT</a></span>
<span> OR <a href="{concat('/cms/delete_dict_file_request?file=', 'content/dictionary_retroconversion_demo_',$currentTime,'.xml')}">DELETE</a></span>,
<span> OR <a href="{concat('/cms/get_dict_file_content_as_resume_request?file=', 'content/dictionary_retroconversion_demo_',$currentTime,'.xml')}" target="_blank">RESUME</a> OR <a href="{concat('/cms/get_dict_file_content_as_pdf_resume_request?file=', 'content/dictionary_retroconversion_demo_',$currentTime,'.xml')}" target="_blank">RESUME PDF</a></span>
<span> OR <a href="{concat('/cms/get_dict_file_xml_content_request?file=content/dictionary_retroconversion_demo_',$currentTime,'.xml')}" target="_blank">XML</a></span>
</p>
</body>
</html>
)
)
};


(: ========================================================================================================================= :)


declare function page:get_resume_for_job_offer_form()
as element(Q{http://www.w3.org/1999/xhtml}html)
{
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Resume For Job Offer form</title>
</head>

<body>
<div width="90%">
<pre> </pre>
<p>Below is a raw text of a (french) job offer.</p>
<p>Clicking below on "Get a resume for this job":</p>
<ul><li>analyses this job offer and the (english) global resume below,</li>
<li>extracts from it the relevant informations for this job,</li>
<li>and creates a resume version targeted for this job.</li>
<li>global resume:
<span><a href="{concat('/static/editor/xopus/xopus.html#/cms/edit_dict_file_request?file=', 'content/dictionary_cv_couvrant_v5.xml')}" target="_blank">EDIT</a></span>
<span> OR <a href="{concat('/cms/get_dict_file_content_as_resume_request?file=', 'content/dictionary_cv_couvrant_v5.xml')}" target="_blank">RESUME</a></span>
<span> OR <a href="{concat('/cms/get_dict_file_xml_content_request?file=','content/dictionary_cv_couvrant_v5.xml')}" target="_blank">XML</a></span>
</li>
</ul>
<p>The targeted resume can then be edited for final checks/tunings.</p>
<p>The partner AI generating this resume is driven by a set of rules ensuring efficient offer and global resume analyses, and target resume structure and contents generation (more details on this rules mechanism at the bottom of this page).</p>
<p>The resume document schema, defining its structures and content types, is also provided to the AI: contact section structure, skills, cursus, experiences with employer names and period ...</p>
<p>They are analysed by the AI, ensuring a precise resume document semantic analysis and a "schema valid" generated resume.</p>
<p><i>NB: the AI automatically manages french vs english text translations in this process.</i></p>
<p><i>NB: as it is just a demo, the AI integration is not optimized yet to minimize costs, so one may have to rerun the processing several times before having the generated resume.</i></p>
<p>Put the text of a job offer in this text area (or play with the default one):</p>

<form action="get_resume_for_job_offer_request" method="post">
<p><input title="Get a resume for this job" value="Get a resume for this job" type="submit" /> (<i>Please wait: analysis/generation processing may take a few minutes and rerun in case of error/time out.</i>)</p>
<p><textarea name="text_document"
title="Offer in text format" type="text" cols="120" rows="40">
Offre UMR5648-PIEDIM-004 - Concepteur réalisateur (H/F) traitement automatisé de données comptables du Moyen age
Concepteur réalisateur (H/F) traitement automatisé de données comptables du Moyen age

Date Limite Candidature : lundi 8 décembre 2025 23:59:00 heure de Paris

Assurez-vous que votre profil candidat soit correctement renseigné avant de postuler
Informations générales

Intitulé de l'offre : Concepteur réalisateur (H/F) traitement automatisé de données comptables du Moyen age
Référence : UMR5648-PIEDIM-004
Nombre de Postes : 1
Lieu de travail : LYON 07
Date de publication : lundi 17 novembre 2025
Type de contrat : IT en contrat CDD
Durée du contrat : 9 mois
Date d'embauche prévue : 1 mars 2026
Quotité de travail : Complet
Rémunération : à partir de 2521€ brut selon expérience
Niveau d'études souhaité : BAC+3/4
Expérience souhaitée : 1 à 4 années
BAP : D - Sciences Humaines et Sociales
Emploi type : Ingenieure ou ingenieur d'etudes en analyses des sources historiques et culturelles
Missions

L'objectif principal est le développement et la création d'un outil permettant l'identification et l'exploitation de données chiffrées contenues dans les textes médiévaux.
Les missions confiées à la personne recrutée sont d'une part l'identification et l'extraction des données chiffrées dans les textes, puis d'autre part la collecte, l'analyse et la visualisation des éléments obtenus avec pour objectif final la création et le développement de nouveaux outils d'exploitation.
Activités

Analyse structurelle des textes du corpus pour cerner les voies possibles d'un traitement automatique ou semi-automatique.
Marquage des éléments avec des balises XML, extraits et transformés pour faciliter leur collecte en XSLT.
Extraction des données chiffrées considérées comme des entités nommées pour établir un processus prototypique.
Conception d'une saisie des données, manuelle ou semi-manuelle avec interconnexion logicielle, intégrant éventuellement la conversion de devises, ce qui revient à la création d'un tableur spécifique (accompagné des variables et des formules de conversion).
Mise en place d'un outil d'analyse des données chiffrées, configurable (construction des différents types d'analyse) en fonction de la problématique de recherche, outil censé produire des rendus visuels.
Compétences

- Connaissance approfondie de XML TEI, tableurs et technologies NER.
- Maîtrise de git pour mettre en place des dépôts github ou gitlab.
- Capacité à dialoguer avec des chercheurs et connaissances des problématiques d'édition.
- Savoir travailler en équipe et en autonomie.
- Savoir rendre compte à sa hiérarchie.
Compétences souhaitées :
- Maîtrise des langages de script
- Connaissance des bases de données XML TEI (eXistdb)
- Connaissance de xQuery
- Connaissance des méthodes et d'outils d'analyse de données textuelles (plateforme TXM ou autre)
- Connaissance du latin et de certaines langues vernaculaires. compétences en paléographie médiévale requises
Contexte de travail

Localisé dans les bureaux du CIHAM à Lyon et Avignon, le poste est lié à l'obtention d'un contrat Biblissima+ pour la création de ces référentiels exploratoires, qui seront hébergés sur Huma-num. La personne recrutée assurera la gestion de la plateforme de stockage et la mutualisation. Elle aura un rôle d'interface avec les partenaires du CIHAM et Biblissima +. Elle sera rattachée au CIHAM. Des déplacements occasionnels sont à prévoir, mais une grande partie du travail pourra être effectuée en télétravail en accord avec les différents partenaires.


</textarea></p>
<p><input title="Generation rules file" name="prePromptFile" type="text"
value="SchemedTalks/cvForOfferRulesFile_default.txt" size="80" /></p>
<p>The generation rules file is a set of rules driving the LLM in its content generation.
It is based on a rules hierachy mechanism enabling :</p>
<ul><li>A constrained resume format generation suitable for integration
with the other features of this CMS (editing, HTML/PDF composition, adavanced search queries...).</li>
<li>Customizations of the contents generated, with custom generation rules defining various profiles corresponding to
offers like: "operational senior software engineer profile", "applied llm software engineer profile", etc...</li>
<li>Other document type generation like a cover letter for provided offer and resume, with the same customization principle.</li>
</ul>
<p><i>a demo of these features is possible <a href="mailto:ctitdoc@gmail.com">on demand</a>.</i></p>

</form>
</div>
</body>
</html>
};



declare %updating function page:get_resume_for_job_offer_request(
$text_document as xs:string,
$prePromptFile as xs:string
) {

let $payload :=
    [
      map {
        "type": "OARequest",
        "prePromptFile": $prePromptFile,
        "prompt": $text_document
      }
    ],
    $request :=
<http:request
method='post' timeout='900'>
<http:header name="Content-Type" value="application/json; charset=utf-8"/>
<http:header name="Accept" value="application/json"/>
<http:body media-type="application/json"/>
</http:request>

let $response := http:send-request($request, "http://www.sitems.org:16387/schemed_talks", $payload)
let $jsonText := $response[2]
let $wrapped := concat("<content>", $jsonText, "</content>")
let $parsed := parse-xml($wrapped)
let $document := $parsed/node()/document
let $currentTime := page:sanitize-datetime(fn:current-dateTime())


return
(
db:put(
"dictionary",
$document,
concat('content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml')
),
update:output(
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CV For Job Offer request status</title>
<link type="text/css" rel="stylesheet" href="/static/style.css"/>
</head>
<body>
<pre> </pre>
<pre> </pre>
<pre> </pre>
<p>Resume targeted for this job offer: content/dictionary_cv_for_job_offer_demo_{$currentTime}.xml:
<span><a href="{concat('/static/editor/xopus/xopus.html#/cms/edit_dict_file_request?file=', 'content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml')}" target="_blank">EDIT</a></span>
<span> OR <a href="{concat('/cms/delete_dict_file_request?file=', 'content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml')}">DELETE</a></span>,
<span> OR <a href="{concat('/cms/get_dict_file_content_as_resume_request?file=', 'content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml')}" target="_blank">RESUME</a> OR <a href="{concat('/cms/get_dict_file_content_as_pdf_resume_request?file=', 'content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml')}" target="_blank">RESUME PDF</a></span>
<span> OR <a href="{concat('/cms/get_dict_file_xml_content_request?file=content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml')}" target="_blank">XML</a></span>
</p>
</body>
</html>
)
)
};

declare %updating function page:get_resume_for_job_offer_request_json(
                                                           $text_document as xs:string,
                                                           $prePromptFile as xs:string
                                                           ) {
  let $payload :=
      [
        map {
          "type": "OARequest",
          "prePromptFile": $prePromptFile,
          "prompt": $text_document
        }
      ],
      $request :=
  <http:request
  method='post' timeout='900'>
  <http:header name="Content-Type" value="application/json; charset=utf-8"/>
  <http:header name="Accept" value="application/json"/>
  <http:body media-type="application/json"/>
  </http:request>

  let $response := http:send-request($request, "http://www.sitems.org:16387/schemed_talks", $payload)
  let $jsonText := $response[2]
  let $wrapped := concat("<content>", $jsonText, "</content>")
  let $parsed := parse-xml($wrapped)
  let $document := $parsed/node()/document
  let $currentTime := page:sanitize-datetime(fn:current-dateTime())


  return
  (
  db:put(
  "dictionary",
  $document,
  concat('content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml')
  ),
  update:output(
  map {
          "id":	concat('content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml'),
          "kind": "generic",
          "lastModifiedIso":  string(fn:current-dateTime()),
          "features":[
              "VIEW",
              "EDIT",
              "XML",
              "RESUME"],
          "actions": map {
              "VIEW":	concat('/cms/get_dict_file_content_request?file=content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml'),
              "EDIT":	concat('/static/editor/xopus/xopus.html#/cms/edit_dict_file_request?file=', 'content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml'),
              "XML":	concat('/cms/get_dict_file_xml_content_request?file=content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml'),
              "RESUME":	concat('/cms/get_dict_file_content_as_resume_request?file=', 'content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml'),
              "RESUME/PDF":	concat('/cms/get_dict_file_content_as_pdf_resume_request?file=', 'content/dictionary_cv_for_job_offer_demo_',$currentTime,'.xml')
          }
    }
  ))
};

(: =================================================================================================================== :)



(:~
 : This function returns the list of document (by default of the 'dictionary' database's root collection)
 : @return HTML page
 :)
declare function page:list_dictionary_request()
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
    <p><i>First things first: this demo provides a basic/lame UX as it is not a CMS UX demo at all.</i></p>
    <p><i>It demonstrates value-added backend CMS features instead, for typical headless integration scenarios with whatever UX application and technology.</i></p>
    <p><i>If you loose this demo prompt while playing some of the demos below, just click "home" in the upper left corner.</i></p>
    <p><i>... Yet, to demonstrate the headless nature of this CMS: three UIs integrating its APIs are in WIP: <a href="/react/" target="_blank">React CMS UI (WIP)</a>, <a href="/angular/" target="_blank">Angular CMS UI (WIP)</a> and <a href="http://www.aiacv.fr" target="_blank">Vanilla JS CMS UI (WIP)</a>,<br/> they support : documents listing/actions and AI assisted CV document generation, and other features are mocked for now: document querying, AI assisted restructuring...</i></p>
    <p><i>... NB: prefer a guided tour over a lonely self-service demo? <a href="mailto:ctitdoc@gmail.com">Email me at ctitdoc@gmail.com</a> and we’ll schedule a live walkthrough.</i></p>

    <pre> </pre>
    <p style="width:80%">This Proof of Concept talks about the potential of a CMS driven by document/content schemas.</p>
    <p style="width:80%">The demonstrated concepts and technologies behind the hood exist for decades, are standardized, and fit very well with the new "AI techno wave" (see demos below).</p>
    <p style="width:80%">The target audience is more technologists, as they can evaluate the benefits (or not) of such a solution for their target document authors and users, and less for the latters as... well, it's just a PoC, so it's more difficult for them to see how it could evolve in a complete CMS, yet an <a href="https://en.wikipedia.org/wiki/Minimum_viable_product">MVP</a> solution can be completed in a few weeks.</p>
    <p style="width:80%">The documents below are of various types: application dictionary, skate site page, music software page, resume, work document...</p>
    <p style="width:80%">Their edition is governed by schemas: it defines common element types like paragraph, table, image etc... but also more semantic types, derived from these ones or not, like task descriptions with their status, or even an application's data definition with its validtion constaints and implementation for a software documentation, etc...</p>
    <p style="width:80%">From these types, document structure rules are also defined and the editor is driven by these rules, sothat the author cannot create contents and structures not defined by these types and rules.</p>
    <p style="width:80%">One or more authoring (css) stylesheets can also be defined for these element types, and also (javascript) menus and callbacks (up on element insertion, removal ...), leading to more automatized and productive authoring sessions, as the author does not have to manage styling and makes less repetitive manual tasks while editing the contents of the document:</p>
    <ul style='width:80%'>
        <li>one can click the EDIT links of the documents below to display such a schema driven editor, yet to see the real potential of this editor, a live demo is needed,</li>
        <li>just <a href="mailto:ctitdoc@gmail.com">send an email</a> if you're interested, and we'll organize it.</li>
    </ul>
    <p style="width:80%">Stylesheets can also be defined to format the document for various targets: web site pages (with SEO stuff generated automatically), wikis, PDF/print etc...</p>
    <ul style='width:80%'>
      <li><a href="/static/editor/xopus/xopus.html#/cms/edit_dict_file_request?file=content/dictionary_holy_eboard_build.xml">this electric skateboard document</a>,
           is published as <a href="/cms/get_dict_file_content_request_as_skatelectrique?file=content/dictionary_holy_eboard_build.xml">this web page</a>,</li>
      <li><a href="/static/editor/xopus/xopus.html#/cms/edit_dict_file_request?file=content/dictionary_demo_site_arturia.xml">this music software product</a>,
           is published in <a href="/cms/get_dict_file_demo_request?file=content/dictionary_demo_site_arturia.xml">this web page</a>,</li>
      <li><a href="/static/editor/xopus/xopus.html#/cms/edit_dict_file_request?file=content/dictionary_f.delahaye.xml">this application data dictionary</a>,
           can be published as <a href="/cms/get_dict_file_content_as_markdown_request?file=content/dictionary_f.delahaye.xml">this markdown wiki</a> and can be checked with <a href="https://markdownlivepreview.com/">this online markdown viewer</a>,<br/>
           or as <a href="/cms/get_dict_file_content_as_textile_request?file=content/dictionary_f.delahaye.xml">this textile wiki</a> and can be checked with <a href="https://textile-lang.com/">this online textile viewer</a>,</li>
      <li><a href="/static/editor/xopus/xopus.html#/cms/edit_dict_file_request?file=content/dictionary_resume_franck_delahaye_fr.xml">this resume</a>,
           can be published as <a href="/cms/get_dict_file_content_as_resume_request?file=content/dictionary_resume_franck_delahaye_fr.xml&amp;ignore=standard">this web page</a> or as <a href="/cms/get_dict_file_content_as_pdf_resume_request?file=content/dictionary_resume_franck_delahaye_fr.xml&amp;ignore=standard">this PDF document</a>.</li>
    </ul>
    <p style="width:80%">The documents are stored in a dedicated database and one can query them using an accurate query language using the element types and structure rules defined to find the exact type of content one is looking for, example : searching "email" returns most of the time poor results, as "email" is so common in documents, but searching for a data definition "email" within an application data dictionary return the exact matches one is looking for:</p>
    <ul style='width:80%'>
      <li>a click on the button "Send" of <a href="/cms/eval_dict_xquery_request_form">this Document query form</a> demonstrates it.</li>
    </ul>
    <p style="width:80%">Another value added feature of such a solution is the ability to manage "applicabilities" to contents of document:</p>
    <ul style='width:80%'><li>click on <a href="/cms/get_dict_file_content_as_pdf_resume_request?file=content/dictionary_resume_franck_delahaye_fr.xml&amp;ignore=standard">the "standard" version of this resume</a>:</li>
        <li>it does not contain a section "Les technos",</li>
        <li>now click on <a href="/cms/get_dict_file_content_as_pdf_resume_request?file=content/dictionary_resume_franck_delahaye_fr.xml&amp;ignore=alma_lead_web">a specific version of this resume for a given position type or job offer</a>:</li>
        <li>it does contain a section "Les technos" and its section "Lead Développement dans divers domaines:" starts with two sub-sections instead of a text bloc in the standard version,</li>
        <li>the author can edit several versions in a single "multi-versions" document, setting "applicability" attributes to the contents that are applicable only to some versions and should be ignored for others,</li>
        <li>thus, one avoids having to manage one document for each version and the tedious work of manually copying the common parts in each of them, each time they change.</li>
    </ul>
    <p><strong><a href="/cms/retroconv_text_document_form" target="product_iframe">AI demo: restructuring unstructured text: click me!</a></strong></p>
    <p><strong><a href="/cms/get_resume_for_job_offer_form" target="product_iframe">AI demo: generate document from existing ones: click me!</a></strong></p>
    <pre> </pre>
    <p style='width:80%;margin-bottom:2em'>... more to come : more  AI, modular contents, translations managment, workflows/annotations/releases, access control, word processors integrations, enterprise application integrations, legacy document solutions and formats migrations, paper documents digitization and re-structuring ... => stay tuned !</p>
  </div>
  <table>
  <tr><th>Document</th><th>Last modified</th><th style="text-align:left">Actions</th></tr>
{ for $file in db:list-details('dictionary','content')[text() != 'content/resume.html']
  let $doc := fn:doc(fn:concat("dictionary/", $file))/node()
  order by $doc/@last_modified descending
  return
  <tr>
  <td>
<!--p style="margin-bottom:0.5em"-->
{$file/text()}</td><td>{string($doc/@last_modified)}</td><td><a href="{concat('/cms/get_dict_file_content_request?file=', $file/text())}">VIEW</a>,
<span><a href="{concat('/static/editor/xopus/xopus.html#/cms/edit_dict_file_request?file=', $file/ text())}" target="_blank">EDIT</a>, </span>
<span><a href="{concat('/cms/delete_dict_file_request?file=', $file/text())}">DELETE</a></span>,
<span><a href="{concat('/cms/get_dict_file_xml_content_request?file=', $file/text())}" target="_blank">XML</a></span>,
<span><a href="{concat('/cms/get_dict_file_content_as_html_file_request?file=', $file/text())}" target="_blank">HTML FILE</a></span>
<br/>
  {
  if (contains($doc/@features, 'MARKDOWN')) then
 <span><a href="{concat('/cms/get_dict_file_content_as_markdown_request?file=', $file/ text())}" target="_blank">MARKDOWN</a>&#160;</span>
  else ()
  }
{
if (contains($doc/@features, 'PDF')) then
<span><a href="{concat('/cms/get_dict_file_content_as_pdf_request?file=', $file/text())}" target="_blank">PDF</a>&#160;</span>
else ()
}
{
if (contains($doc/@features, 'RESUME')) then
<span><a href="{concat('/cms/get_dict_file_content_as_resume_request?file=', $file/text())}" target="_blank">HTML RESUME</a>/<a href="{concat('/cms/get_dict_file_content_as_pdf_resume_request?file=', $file/text())}">PDF RESUME</a>&#160;</span>
else ()
}
{
if (contains($doc/@features, 'SKATELECTRIQUE')) then
<span><a href="{concat('/cms/get_dict_file_content_request_as_skatelectrique?file=', $file/text())}">SKATELECTRIQUE PAGE</a>&#160;</span>
else ()
}
{
if (contains($doc/@features, 'ARTURIA')) then
<span><a href="{concat('/cms/get_dict_file_demo_request?file=', $file/text())}" target="_blank">ARTURIA PAGE</a>&#160;</span>
else ()
}
{
if (contains($doc/@features, 'TEXTILE')) then
<span><a href="{concat('/cms/get_dict_file_content_as_textile_request?file=', $file/text())}" target="_blank">TEXTILE</a>/<a href="{concat('/cms/get_dict_file_content_as_textile_v2_request?file=', $file/text())}" target="_blank">TEXTILE V2</a>&#160;</span>
else ()
}
</td><!--/p-->
</tr>
}
</table>
<p><pre> </pre></p>
<p><pre> </pre></p>
  </body>
</html>
};

(:~
 : This function returns the list of document as json (by default of the 'dictionary' database's root collection)
     { id: 'content/dictionary_cv_courvant_v6.xml', lastModifiedIso: '2026-02-09T16:18:19+01:00', kind: 'resume' },

 : @return array
 :)
declare function page:list_dictionary_request_json() as array(*) {
  array {
    for $file in db:list-details('dictionary','content')[text() != 'content/resume.html']
    let $doc := doc(concat("dictionary/", $file))/node()
    order by xs:dateTime($doc/@last_modified) descending
    let $f := string($file),
    $u := encode-for-uri($f),
    $defaultActions := map {
                               "VIEW": concat("/cms/get_dict_file_content_request?file=", $u),
                               "EDIT": concat("/static/editor/xopus/xopus.html#/cms/edit_dict_file_request?file=", $u),
                               "XML":  concat("/cms/get_dict_file_xml_content_request?file=", $u)
                             },
    $markdownAction := page:action_of_doc("MARKDOWN", "MARKDOWN", $doc, $u, "/cms/get_dict_file_content_as_markdown_request"),
    $resumeAction := page:action_of_doc("RESUME", "RESUME", $doc, $u, "/cms/get_dict_file_content_as_resume_request"),
    $resumePdfAction := page:action_of_doc("RESUME", "RESUME/PDF", $doc, $u, "/cms/get_dict_file_content_as_pdf_resume_request"),
    $pdfAction := page:action_of_doc("PDF", "PDF", $doc, $u, "/cms/get_dict_file_content_as_pdf_request"),
    $skateEletriqueAction := page:action_of_doc("SKATELECTRIQUE", "SKATELECTRIQUE PAGE", $doc, $u, "/cms/get_dict_file_content_request_as_skatelectrique"),
    $arturiaAction := page:action_of_doc("ARTURIA", "ARTURIA PAGE", $doc, $u, "/cms/get_dict_file_demo_request"),
    $textileAction := page:action_of_doc("TEXTILE", "TEXTILE", $doc, $u, "/cms/get_dict_file_content_as_textile_request"),
    $actions := map:merge((
                        $defaultActions,
                        $markdownAction,
                        $resumeAction,
                        $resumePdfAction,
                        $pdfAction,
                        $skateEletriqueAction,
                        $arturiaAction,
                        $textileAction
                       )
                    )
    return map {
          "id": $f,
          "kind": "generic",
          "lastModifiedIso": string($doc/@last_modified),
          "features":array {
                        array:flatten((
                            "VIEW","EDIT","XML",
                            array {tokenize(normalize-space($doc/@features), '\s+')}
                        ))},
          "actions": $actions
        }
  }
};

declare   function page:action_of_doc($action as xs:string, $key as xs:string, $doc as node(), $docId as xs:string, $request as xs:string) as map(*) {
  if (contains(string($doc/@features), $action)) then
    map { $key: concat($request, "?file=", $docId) }
  else
    map {}
};

(:~
 : This function returns the document cms homepage.
 : @return HTML page
 :)
declare   function page:dictionary_home_page()
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
    <li><a href="/cms/list_dictionary_request"
        style="color:white" target="product_iframe">home</a></li>

      <li><a href="/cms/list_dictionary_request"
      style="color:white" target="product_iframe">list documents</a></li>

      <li><a
      href="/cms/record_dict_file_of_author_form"
      style="color:white" target="product_iframe">record document file of
      author</a></li>

      <li><a
      href='/cms/eval_dict_xquery_request_form'
      style="color:white" target="product_iframe">eval document query</a></li>

      <li><a
      href='/cms/get_logs_request'
      style="color:white" target="product_iframe">get logs</a></li>

    </ul> </nav><iframe id="main_iframe" name="product_iframe"
  src="/cms/list_dictionary_request"
  style="border:0" scrolling="auto"></iframe></body>
</html>
};

declare %updating function page:delete_dict_file_request(
    $file as xs:string)
{
(: if ($file != 'content/dictionary_f.delahaye.xml' ) then ( :)
if (contains($file,'training') or contains($file,'2025')  or contains($file,'2026')  or contains($file,'2027')
or contains($file,'2028')  or contains($file,'2029') or contains($file,'2030') ) then (
update:output(<html xmlns="http://www.w3.org/1999/xhtml">
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
update:output(<html xmlns="http://www.w3.org/1999/xhtml">
            <head>
              <title>Delete file request status</title>
            </head>

            <body>
              <h1>"Delete file" request status</h1>
              <p>File { $file } has not been deleted as it is used for authoring demo !</p>

            </body>
          </html>))
};

declare function page:get_dict_file_content_request(
    $file as xs:string, $ignore as xs:string?) as node()
{
xslt:transform(
page:filter_ignore(fn:doc(fn:concat("dictionary/", $file))/node(), $ignore),
fn:concat(conf:xsl_path(),"/practices.xsl")
)/node()
};

declare function page:get_dict_file_content_as_markdown_request(
    $file as xs:string) as xs:string
{
xslt:transform-text(
xslt:transform(fn:doc(fn:concat("dictionary/", $file))/node(),
fn:concat(conf:xsl_path(),"/practices.xsl")
)/node(),
fn:concat(conf:xsl_path(),"/xhtml2markdown.xsl"))
};

declare function page:get_dict_file_content_as_resume_request(
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


declare function page:get_dict_file_content_request_as_skatelectrique(
$file as xs:string) as node() (:as element(Q{http://www.w3.org/1999/xhtml}html):) (:as document-node():)
{
xslt:transform(fn:doc(fn:concat("dictionary/", $file))/node(),
fn:concat(conf:xsl_path(),"/skatelectrique.xsl")
)/node()
};

declare function page:get_dict_file_demo_request(
$file as xs:string) as node()
{
xslt:transform(fn:doc(fn:concat("dictionary/", $file))/node(),
fn:concat(conf:xsl_path(),"/demo.xsl")
)/node()
};

declare function page:get_dict_file_content_as_textile_v2_request(
    $file as xs:string) as xs:string
{
xslt:transform-text(
xslt:transform(fn:doc(fn:concat("dictionary/", $file))/node(),
fn:concat(conf:xsl_path(),"/practices.xsl")
)/node(),
fn:concat(conf:xsl_path(),"/xhtml2markdown.xsl"),map { "format": "textile" })
};

declare function page:get_dict_file_content_as_textile_request(
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

declare function page:get_dict_file_content_as_html_file_request(
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


declare function page:get_resume_content_as_html_file_request(
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



declare function page:get_dict_file_content_as_pdf_resume_request(
$file as xs:string, $ignore as xs:string?) as xs:base64Binary
{
  try {
    let $filePath := page:get_resume_content_as_html_file_request($file, $ignore)
    return file:read-binary(proc:system( 'html2pdf.sh', ($filePath)))
  } catch proc:error {
    'Error: ' || $err:description
  }
};


declare function page:get_dict_file_xml_content_request(
    $file as xs:string) as node()
{
fn:doc(fn:concat("dictionary/", $file))/node()
};

declare function page:get_dict_file_filtered_content_request(
$file as xs:string, $ignore as xs:string?) as node()
{
xslt:transform(page:filter_ignore(fn:doc(fn:concat("dictionary/", $file))/node(), $ignore),
fn:concat(conf:xsl_path(),"/practices.xsl")
)/node()

};

declare function page:get_content_as_html_file_request(
$file as xs:string, $ignore as xs:string?) as xs:string
{
try {
let $htmlContent := page:filter_collapse_expand(
page:get_dict_file_filtered_content_request($file, $ignore)),
$filePath := "/tmp/" || $file || ".html",
$fileDirPath := file:parent($filePath),
$statusMkdir := proc:system(  'mkdir',('-p', $fileDirPath)),
$status := file:write-text($filePath, "<!DOCTYPE html>"),
$status2 := file:append($filePath, $htmlContent)
return $filePath
} catch proc:error {
'Error: ' || $err:description
}
};

declare function page:get_dict_file_content_as_pdf_request(
$file as xs:string, $ignore as xs:string?) as xs:base64Binary
{
try {
let $filePath := page:get_content_as_html_file_request($file, $ignore)
return file:read-binary(proc:system( 'html2pdf.sh', ($filePath)))
} catch proc:error {
'Error: ' || $err:description
}
};

declare function page:get_dict_file_xml_content_request_debug(
    $file as xs:string) as xs:string
{
string(fn:doc(fn:concat("dictionary/", $file))/node())
};


declare function page:edit_dict_file_request(
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
          <x:pipeline xml="/cms/get_dict_file_xml_content_request?file={$file}" xsd="{$practices_editor_config_path}/xsd/coaching.xsd">
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

declare %updating function page:save_dict_file_request(
    $uri as xs:string,
    $body as document-node()
)
{
  let $now :=
    fn:format-dateTime(
      current-dateTime(),
      "[Y0001]-[M01]-[D01]T[H01]:[m01]:[s01][Z]"
    )

  return
    (
      update:output(
        fn:concat(
          "Save request status : ",
          page:file_from_uri($uri),
          " correctly saved in the database."
        )
      ),

      if (
        contains($uri, 'training')
        or ($body/*[1]/@ignore_for = 'Tihar92$')
      )
      then
        db:put(
          "dictionary",
          copy $content := $body/node()
          modify (
            (: gestion ignore_for :)
            delete node $content/@ignore_for,

            (: ajout last_modified :)
            delete node $content/@last_modified,
            insert node attribute last_modified { $now } into $content,

            (: ton code existant :)
            for $code in $content//code
            return
              replace node $code with element code {
                if ($code/@text-align)
                then attribute {'text-align'} { $code/@text-align }
                else (),
                for $n in $code/node()
                return page:replace_lf_by_br($n)
              }
          )
          return $content,
          page:file_from_uri($uri)
        )
      else ()
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

declare function page:eval_dict_xquery_request(
$xquery as xs:string, $result_format as xs:string) as node()
{
if ($result_format != 'xml') then (
xslt:transform(xquery:eval($xquery),
fn:concat(conf:xsl_path(),"/practices.xsl")
)/node()
) else (
<rest:forward>/cms/eval_dict_xquery_as_xml_request</rest:forward>
)
};

declare function page:eval_dict_xquery_as_xml_request(
$xquery as xs:string) as node()
{
xquery:eval($xquery)
};


declare function page:eval_dict_xquery_request_form()
as element(Q{http://www.w3.org/1999/xhtml}html)
{
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Document query form</title>
</head>

<body>
<p>Write below your query on document collection and click on submit to evaluate it.</p>

<form action="/cms/eval_dict_xquery_request" method="post">

<p>Result format : <select name="result_format">
<option value="html" checked="checked">HTML</option>
<option value="xml">XML</option>
</select></p>

<p><textarea rows="50" cols="200" name="xquery"
title="Query on document collection">
(: the example below is a xquery to get "data_definition" elements of "dictionary" documents containing 'email',
replace "/dictionary/data_definition" by "/document/section" to get main "section" elements of "document" documents containing 'email',

you can even retrieve all the features of an application that depends on a given implementation class like that (try it):

for $x in collection('dictionary')/dictionary//*[ @implementation_class = '\Bilendi\MemberBundle\Validator\Constraints\Email' ]
return $x

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
<p><input value="Send" type="submit" /></p>
</form>
</body>
</html>
};


declare function page:get_logs_request() as element(logs)
{
<logs>
{for $log in admin:logs() return admin:logs($log)}
</logs>
};


declare function page:sanitize-datetime($dt as xs:dateTime) as xs:string {
let $s := replace(string($dt), '\..*', '')  (: supprime .991+01:00 :)
let $s := replace($s, 'T', '_')             (: T → _ :)
let $s := replace($s, ':', '_')             (: : → _ :)
return $s
};

