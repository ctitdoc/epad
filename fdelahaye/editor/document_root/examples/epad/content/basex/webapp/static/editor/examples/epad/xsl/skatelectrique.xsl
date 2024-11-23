<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- 
  Note for developers taking this stylesheet
  as starting point: Use a treeTransform on the
  generated HTML to see the resulting tags inside 
  Xopus: 

    <x:view name="skatelectrique.fr View">
      <x:transform xsl="xsl/skatelectrique.xsl"/>
      <x:treeTransform/>
    </x:view>
-->

  <!-- xsl:output method="html" doctype-public="html" indent="yes" / -->
  <xsl:output method="xhtml" indent="no" />
  <xsl:param name="xopus">false</xsl:param>

  <xsl:include href="dates.xsl"/>
  <xsl:include href="meta.xsl"/>
  <xsl:include href="dictionary.xsl"/>

  <xsl:param name="internal-nav" select="practices/h|dictionary/h|document/h"/>

  <!-- Main page structure -->
  <xsl:template match="/">
    <html>
      <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
        <title><xsl:value-of select="practices/h|dictionary/h|document/h"/></title>
        <meta charset="utf-8"/>
        <!--[if IE]><meta http-equiv="ImageToolbar" content="False" /><![endif]-->
        <meta name="author" content="Doreau Christophe"/>
        <meta name="generator" content="Incomedia WebSite X5 Evo 2022.1.7 - www.websitex5.com"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

        <!-- link rel="stylesheet" href="/static/editor/examples/epad/xsl/skatelectrique/reset.css" media="screen,print"/ -->
        <link rel="stylesheet" href="/static/editor/examples/epad/xsl/skatelectrique/print.css" media="print"/>
        <link rel="stylesheet" href="/static/editor/examples/epad/xsl/skatelectrique/style.css" media="screen,print"/>
        <link rel="stylesheet" href="/static/editor/examples/epad/xsl/skatelectrique/template.css" media="screen"/>

        <link rel="stylesheet" href="/static/editor/examples/epad/xsl/skatelectrique/custom.css" media="screen, print"/>
        <link rel="stylesheet" href="/static/editor/examples/epad/xsl/skatelectrique/e-skate-marqueterie.css" media="screen,print"/>
        <script src="/static/editor/examples/epad/xsl/skatelectrique/jquery.js"></script>
        <script src="/static/editor/examples/epad/xsl/skatelectrique/x5engine.js" data-files-version="2022-1-7-0"></script>

        <script src="/static/editor/examples/epad/xsl/skatelectrique/main.js"></script>
        <script>
          window.onload = function(){ checkBrowserCompatibility('Le Navigateur que vous utilisez ne prend pas en charge les fonctions requises pour afficher ce site.','Le Navigateur que vous utilisez est susceptible de ne pas prendre en charge les fonctions requises pour afficher ce site.','[1]Mettez à jour votre navigateur[/1] ou bien [2]continuez[/2].','http://outdatedbrowser.com/'); };
          x5engine.utils.currentPagePath = 'e-skate-marqueterie.html';
          x5engine.boot.push(function () { x5engine.imPageToTop.initializeButton({}); });
        </script>
        <link rel="icon" href="https://www.skatelectrique.fr/favicon.png?2022-1-7-0-638064215171483026" type="image/png"/>
        <script src="/static/editor/examples/epad/xsl/skatelectrique/pptm.js" id="xo-pptm" async=""></script><style type="text/css">button::-moz-focus-inner,input[type="button"]::-moz-focus-inner,input[type="submit"]::-moz-focus-inner,input[type="reset"]::-moz-focus-inner { padding: 0 !important; border: 0 none !important; }</style>
      </head>
      <body>
        <div id="imPageExtContainer">
        <div id="imPageIntContainer">
          <div id="imHeaderBg"></div>
          <div id="imFooterBg"></div>
            <xsl:apply-templates/>
          <span class="imHidden"><a href="#imGoToCont"
                                    title="Relire le contenu de la page">Retourner au contenu</a></span>
        </div>
        </div>
        <script src="/static/editor/examples/epad/xsl/skatelectrique/x5cart.js"></script>
        <noscript class="imNoScript">
          <div class="alert alert-red">Pour utiliser ce site vous devez activer JavaScript.</div>
        </noscript>


        <script src="/static/editor/examples/epad/xsl/skatelectrique/modernizr-custom.js"></script>
        <script src="/static/editor/examples/epad/xsl/skatelectrique/x5engine.deferrable.js"></script>
        <script src="/static/editor/examples/epad/xsl/skatelectrique/l10n.js"></script>
        <script src="/static/editor/examples/epad/xsl/skatelectrique/x5cartengine.js"></script>
        <script src="/static/editor/examples/epad/xsl/skatelectrique/x5settings.js"></script>
        <div id="media-query-to-js" style=""></div>
        <div id="imPageToTop" class="page-to-top-visible" style="display: block;"><img
                src="/static/editor/examples/epad/xsl/skatelectrique/page-to-top.png"
                alt="scroll to top" id="imPageToTop_img"/></div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="practices|document">
    <div id="imPage">
      <header id="imHeader">
        <div id="imHeaderObjects">
          <div id="imHeader_imObjectTitle_05_wrapper" class="template-object-wrapper">
            <div id="imHeader_imObjectTitle_05"><span id="imHeader_imObjectTitle_05_text"><a
                    href="https://www.skatelectrique.fr/index.html"
                    onclick="return x5engine.utils.location('index.html', null, false)">e-skate</a></span>
            </div>
          </div>
          <div id="imHeader_imObjectTitle_07_wrapper" class="template-object-wrapper">
            <div id="imHeader_imObjectTitle_07"><span
                    id="imHeader_imObjectTitle_07_text">Fabriqué en France</span></div>
          </div>
          <div id="imHeader_imObjectTitle_08_wrapper" class="template-object-wrapper">
            <div id="imHeader_imObjectTitle_08"><span id="imHeader_imObjectTitle_08_text">POWERSKATE</span>
            </div>
          </div>
          <div id="imHeader_imObjectTitle_09_wrapper" class="template-object-wrapper">
            <div id="imHeader_imObjectTitle_09"><span id="imHeader_imObjectTitle_09_text"><a
                    href="https://www.skatelectrique.fr/index.html"
                    onclick="return x5engine.utils.location('index.html', null, false)">powerskate</a></span>
            </div>
          </div>
        </div>
      </header>
      <div id="imStickyBarContainer">
        <div id="imStickyBarGraphics"></div>
        <div id="imStickyBar">
          <div id="imStickyBarObjects"></div>
        </div>
      </div>
      <a class="imHidden" href="#imGoToCont" title="Aller au menu de navigation">Aller au contenu</a>
      <div id="imSideBar">
        <div id="imSideBarObjects">
          <div id="imSideBar_imMenuObject_01_wrapper" class="template-object-wrapper"><!-- UNSEARCHABLE -->
            <div id="imSideBar_imMenuObject_01">
              <div id="imSideBar_imMenuObject_01_container">
                <div class="hamburger-button hamburger-component">
                  <div>
                    <div>
                      <div class="hamburger-bar"></div>
                      <div class="hamburger-bar"></div>
                      <div class="hamburger-bar"></div>
                    </div>
                  </div>
                </div>
                <div class="hamburger-menu-background-container hamburger-component">
                  <div class="hamburger-menu-background menu-mobile menu-mobile-animated hidden">
                    <div class="hamburger-menu-close-button"><span>×</span></div>
                  </div>
                </div>
                <ul class="menu-mobile-animated hidden">
                  <li class="imMnMnFirst imPage" data-link-paths=",/index.html,/">
                    <div class="label-wrapper">
                      <div class="label-inner-wrapper">
                        <a class="label" href="https://www.skatelectrique.fr/index.html">
                          Accueil </a>
                      </div>
                    </div>
                  </li>
                  <li class="imMnMnMiddle imPage" data-link-paths=",/vente.html">
                    <div class="label-wrapper">
                      <div class="label-inner-wrapper">
                        <a class="label" href="https://www.skatelectrique.fr/vente.html">
                          Vente </a>
                      </div>
                    </div>
                  </li>
                  <li class="imMnMnMiddle imLevel">
                    <div class="label-wrapper">
                      <div class="label-inner-wrapper"><span class="label">Batterie</span></div>
                    </div>
                    <ul data-original-position="open-right" class="open-right" style="">
                      <li class="imMnMnFirst imPage"
                          data-link-paths=",/batterie-maverix-evo-800-cross.html">
                        <div class="label-wrapper">
                          <div class="label-inner-wrapper">
                            <a class="label"
                               href="https://www.skatelectrique.fr/batterie-maverix-evo-800-cross.html">
                              batterie maverix evo 800 cross </a>
                          </div>
                        </div>
                      </li>
                      <li class="imMnMnMiddle imPage" data-link-paths=",/batterie-evolve.html">
                        <div class="label-wrapper">
                          <div class="label-inner-wrapper">
                            <a class="label"
                               href="https://www.skatelectrique.fr/batterie-evolve.html">
                              batterie evolve </a>
                          </div>
                        </div>
                      </li>
                      <li class="imMnMnMiddle imPage"
                          data-link-paths=",/batterie-sur-mesure-.html">
                        <div class="label-wrapper">
                          <div class="label-inner-wrapper">
                            <a class="label"
                               href="https://www.skatelectrique.fr/batterie-sur-mesure-.html">
                              batterie sur mesure </a>
                          </div>
                        </div>
                      </li>
                      <li class="imMnMnLast imPage" data-link-paths=",/batterie-e-bike.html">
                        <div class="label-wrapper">
                          <div class="label-inner-wrapper">
                            <a class="label"
                               href="https://www.skatelectrique.fr/batterie-e-bike.html">
                              batterie e-bike </a>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </li>
                  <li class="imMnMnMiddle imPage" data-link-paths=",/l-atelier.html">
                    <div class="label-wrapper">
                      <div class="label-inner-wrapper">
                        <a class="label" href="https://www.skatelectrique.fr/l-atelier.html">
                          L'atelier </a>
                      </div>
                    </div>
                  </li>
                  <li class="imMnMnMiddle imPage" data-link-paths=",/realisations.html">
                    <div class="label-wrapper">
                      <div class="label-inner-wrapper">
                        <a class="label" href="https://www.skatelectrique.fr/realisations.html">
                          Réalisations </a>
                      </div>
                    </div>
                  </li>
                  <li class="imMnMnMiddle imPage" data-link-paths=",/videos.html">
                    <div class="label-wrapper">
                      <div class="label-inner-wrapper">
                        <a class="label" href="https://www.skatelectrique.fr/videos.html">
                          Vidéos </a>
                      </div>
                    </div>
                  </li>
                  <li class="imMnMnMiddle imPage" data-link-paths=",/contact.html">
                    <div class="label-wrapper">
                      <div class="label-inner-wrapper">
                        <a class="label" href="https://www.skatelectrique.fr/contact.html">
                          Contact </a>
                      </div>
                    </div>
                  </li>
                  <li class="imMnMnLast imPage" data-link-paths=",/deco-deck.html">
                    <div class="label-wrapper">
                      <div class="label-inner-wrapper">
                        <a class="label" href="https://www.skatelectrique.fr/deco-deck.html">
                          Déco deck </a>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div><!-- UNSEARCHABLE END -->
            <script>
              var imSideBar_imMenuObject_01_settings = {
              'menuId': 'imSideBar_imMenuObject_01',
              'responsiveMenuEffect': 'scale',
              'animationDuration': 1000,
              }
              x5engine.boot.push(function () {
              x5engine.initMenu(imSideBar_imMenuObject_01_settings)
              });
              $(function () {
              $('#imSideBar_imMenuObject_01_container ul li').not('.imMnMnSeparator').each(function () {
              var $this = $(this), timeout = 0;
              $this.on('mouseenter', function () {
              clearTimeout(timeout);
              setTimeout(function () {
              $this.children('ul, .multiple-column').stop(false, false).show();
              }, 250);
              }).on('mouseleave', function () {
              timeout = setTimeout(function () {
              $this.children('ul, .multiple-column').stop(false, false).hide();
              }, 250);
              });
              });
              });

            </script>
          </div>
        </div>
      </div>
      <div id="imContentGraphics"></div>
      <main>
        <a id="imGoToCont"></a>
        <div id="imPageRow_1" class="imPageRow">

        </div>
<!--
        <div id="imCell_6" class="" data-responsive-sequence-number="1">
          <div id="imCellStyleGraphics_6"></div>
          <div id="imCellStyleBorders_6"></div>&lt;!&ndash; UNSEARCHABLE &ndash;&gt;
          <div id="imMenuObject_35_06">
            <div id="imMenuObject_35_06_container">
              <div class="hamburger-button hamburger-component">
                <div>
                  <div>
                    <div class="hamburger-bar"></div>
                    <div class="hamburger-bar"></div>
                    <div class="hamburger-bar"></div>
                  </div>
                </div>
              </div>
              <div class="hamburger-menu-background-container hamburger-component">
                <div class="hamburger-menu-background menu-mobile menu-mobile-animated hidden">
                  <div class="hamburger-menu-close-button">
                    <span>×</span>
                  </div>
                </div>
              </div>
              <ul class="menu-mobile-animated hidden">
                <li class="imMnMnFirst imPage" data-link-paths=",/index.html,/">
                  <div class="label-wrapper">
                    <div class="label-inner-wrapper">
                      <a class="label" href="index.html">
                        Accueil
                      </a>
                    </div>
                  </div>
                </li>
                <li class="imMnMnMiddle imPage" data-link-paths=",/vente.html">
                  <div class="label-wrapper">
                    <div class="label-inner-wrapper">
                      <a class="label" href="vente.html">
                        Vente
                      </a>
                    </div>
                  </div>
                </li>
                <li class="imMnMnMiddle imLevel">
                  <div class="label-wrapper">
                    <div class="label-inner-wrapper">
                      <span class="label">Batterie</span>
                    </div>
                  </div>
                  <ul data-original-position="open-bottom" class="open-bottom" style="">
                    <li class="imMnMnFirst imPage" data-link-paths=",/batterie-maverix-evo-800-cross.html">
                      <div class="label-wrapper">
                        <div class="label-inner-wrapper">
                          <a class="label" href="batterie-maverix-evo-800-cross.html">
                            batterie maverix evo 800 cross
                          </a>
                        </div>
                      </div>
                    </li>
                    <li class="imMnMnMiddle imPage" data-link-paths=",/batterie-evolve.html">
                      <div class="label-wrapper">
                        <div class="label-inner-wrapper">
                          <a class="label" href="batterie-evolve.html">
                            batterie evolve
                          </a>
                        </div>
                      </div>
                    </li>
                    <li class="imMnMnMiddle imPage" data-link-paths=",/batterie-sur-mesure-.html">
                      <div class="label-wrapper">
                        <div class="label-inner-wrapper">
                          <a class="label" href="batterie-sur-mesure-.html">
                            batterie sur mesure
                          </a>
                        </div>
                      </div>
                    </li>
                    <li class="imMnMnLast imPage" data-link-paths=",/batterie-e-bike.html">
                      <div class="label-wrapper">
                        <div class="label-inner-wrapper">
                          <a class="label" href="batterie-e-bike.html">
                            batterie e-bike
                          </a>
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
                <li class="imMnMnMiddle imPage" data-link-paths=",/l-atelier.html">
                  <div class="label-wrapper">
                    <div class="label-inner-wrapper">
                      <a class="label" href="l-atelier.html">
                        L'atelier
                      </a>
                    </div>
                  </div>
                </li>
                <li class="imMnMnMiddle imPage" data-link-paths=",/realisations.html">
                  <div class="label-wrapper">
                    <div class="label-inner-wrapper">
                      <a class="label" href="realisations.html">
                        Réalisations
                      </a>
                    </div>
                  </div>
                </li>
                <li class="imMnMnMiddle imPage" data-link-paths=",/videos.html">
                  <div class="label-wrapper">
                    <div class="label-inner-wrapper">
                      <a class="label" href="videos.html">
                        Vidéos
                      </a>
                    </div>
                  </div>
                </li>
                <li class="imMnMnMiddle imPage" data-link-paths=",/contact.html">
                  <div class="label-wrapper">
                    <div class="label-inner-wrapper">
                      <a class="label" href="contact.html">
                        Contact
                      </a>
                    </div>
                  </div>
                </li>
                <li class="imMnMnLast imPage" data-link-paths=",/deco-deck.html">
                  <div class="label-wrapper">
                    <div class="label-inner-wrapper">
                      <a class="label" href="deco-deck.html">
                        Déco deck
                      </a>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>&lt;!&ndash; UNSEARCHABLE END &ndash;&gt;
          <script>
            var imMenuObject_35_06_settings = {
            'menuId': 'imMenuObject_35_06',
            'responsiveMenuEffect': 'slide',
            'animationDuration': 1000,
            }
            x5engine.boot.push(function(){x5engine.initMenu(imMenuObject_35_06_settings)});
            $(function () {$('#imMenuObject_35_06_container ul li').not('.imMnMnSeparator').each(function () { var $this
            = $(this), timeout = 0; $this.on('mouseenter', function () {
            if($(this).parents('#imMenuObject_35_06_container-menu-opened').length > 0) return; clearTimeout(timeout);
            setTimeout(function () { $this.children('ul, .multiple-column').stop(false, false).fadeIn(); }, 250);
            }).on('mouseleave', function () { if($(this).parents('#imMenuObject_35_06_container-menu-opened').length >
            0) return; timeout = setTimeout(function () { $this.children('ul, .multiple-column').stop(false,
            false).fadeOut(); }, 250); });});});

          </script>
        </div>
-->
        <xsl:apply-templates select="*[name() != 'meta' ]"/>
        <xsl:apply-templates select="." mode="below-article-notes"/>
      </main>
      <footer id="imFooter">
        <div id="imFooterObjects">
          <div id="imFooter_imObjectTitle_07_wrapper" class="template-object-wrapper">
            <div id="imFooter_imObjectTitle_07"><span id="imFooter_imObjectTitle_07_text"><a
                    href="https://www.skatelectrique.fr/index.html"
                    onclick="return x5engine.utils.location('index.html', null, false)">powerskate</a></span>
            </div>
          </div>
          <div id="imFooter_pluginAppObj_08_wrapper" class="template-object-wrapper">
            <!-- Social Icons v.16 -->
            <div id="imFooter_pluginAppObj_08">
              <div id="soc_imFooter_pluginAppObj_08">
                <div class="wrapper horizontal flat none">
                  <div class="social-icon flat" style="width: 50px; height: 50px;"><a
                          href="https://www.facebook.com/profile.php?id=100063940639108"
                          target="_blank">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
                      <path d="M57,93V54H70.14l2-15H57V29.09c0-4.39.94-7.39,7.24-7.39H72V8.14a98.29,98.29,0,0,0-11.6-.6C48.82,7.54,41,14.61,41,27.59V39H27V54H41V93H57Z"></path>
                    </svg>
                    <span class="fallbacktext">Fb</span></a></div>
                </div>

              </div>
              <script>
                socialicons_imFooter_pluginAppObj_08();
              </script>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </xsl:template>

  <xsl:template match="section[(@behavior and not(@behavior='section')) or not(@id)]|practice">
    <div  class="imPageRow"></div>
    <div class="section">
      <xsl:apply-templates />
    </div>
  </xsl:template>



  <xsl:template match="section[@view='list']|practice[@view='list']">
    <div>
      <xsl:attribute name="class">
        <xsl:text> section list </xsl:text>
        <xsl:apply-templates select="@border-type"/>
      </xsl:attribute>
      <xsl:apply-templates select="*[local-name() != 'section']"/>
      <div class="content">
        <ul>
          <xsl:apply-templates select="section" mode="list-item"/>
        </ul>
      </div>
      <xsl:apply-templates select="." mode="border"/>
    </div>
    <xsl:apply-templates select="." mode="notes"/>
  </xsl:template>

  <xsl:template match="section|practice" mode="list-item">
    <li>
      <div class="section-li li-content">
        <xsl:apply-templates select="."/>
      </div>
    </li>
  </xsl:template>

  <!-- accordeon -->

  <!--   tabs -->

  <xsl:template match="*" mode="number"></xsl:template>

  <xsl:template match="*[not(@view)]/section/h|*[not(@view)]/practice/h" mode="number">
    <xsl:attribute name="class">
      <xsl:text>section-numbering-</xsl:text>
      <xsl:choose>
        <xsl:when test="/practices/@section-numbering = 'true'" >true</xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
    <xsl:if test="/practices/@section-numbering='true'">
      <span class="h-numbering">
        <xsl:number count="section|practice" from="/practices" level="multiple" format="1"/>.
      </span>
    </xsl:if>
  </xsl:template>

  <!-- headers -->
  <xsl:template match="practices/h|document/h">
    <div class="imContentHeaderObjects imHeader_imObjectTitle_05">
      <h1 class="imHeader_imObjectTitle_05_text"><xsl:call-template name="parent_id"/>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates />
    </h1>
  </div>
  </xsl:template>

  <xsl:template match="section/h|practice/h">
    <div class="imContentHeaderObjects imHeader_imObjectTitle_08">
      <h2 class="imHeader_imObjectTitle_08_text"><xsl:call-template name="parent_id"/>
      <xsl:apply-templates select="@*"/>
      <!--xsl:apply-templates select="."  mode="number"/-->
      <xsl:apply-templates />
     </h2>
    </div>
  </xsl:template>

  <xsl:template match="practice/section/h|section/section/h|ol/h|ul/h">
    <h3><xsl:call-template name="parent_id"/>
      <!--xsl:apply-templates select="."  mode="number"/-->
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates />
    </h3>
  </xsl:template>

  <xsl:template match="practice/section/section/h|section/section/section/h|hli/h">
    <h4><xsl:call-template name="parent_id"/>
      <!--xsl:apply-templates select="."  mode="number"/-->
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates />
    </h4>
  </xsl:template>

  <xsl:template match="practice/section/section/section/h|section/section/section/section/h">
    <h5><xsl:call-template name="parent_id"/>
      <!--xsl:apply-templates select="."  mode="number"/-->
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates />
    </h5>
  </xsl:template>

  <xsl:template match="h-sub">
    <div class="sub-heading">
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates/>
    </div>
  </xsl:template>

  <!-- general -->
  <xsl:template match="technical_restriction">
    <p><i>[Technical constraint]
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates />
    </i></p>
    <xsl:apply-templates select="." mode="notes"/>
  </xsl:template>

  <xsl:template match="p">
    <p class="imContentHeaderObjects imTextObject">
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates />
    </p>
    <xsl:apply-templates select="." mode="notes"/>
  </xsl:template>

  <xsl:template match="code">
    <pre>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates />
    </pre>
  </xsl:template>

  <xsl:template match="ol|ul">
    <div>
      <xsl:attribute name="class">
        <xsl:value-of select="name()"/>
        <xsl:text> list </xsl:text>
        <xsl:apply-templates select="@border-type"/>
      </xsl:attribute>
      <xsl:apply-templates select="h|h-sub"/>
      <div class="content">
      <xsl:element name="{name()}">
        <xsl:apply-templates select="li"/>
      </xsl:element>
      </div>
      <xsl:apply-templates select="." mode="border"/>
    </div>
    <xsl:apply-templates select="." mode="notes"/>
  </xsl:template>

  <xsl:template match="li">
    <li>
      <div class="li-content">
        <xsl:apply-templates />
      </div>
    </li>
  </xsl:template>

  <xsl:template match="li[@crossed]//text()"><del><xsl:value-of select="."/></del></xsl:template>

  <!-- quote -->
  <xsl:template match="quote">
    <div class="quote">
      <div class="openingQuote"></div>
      <xsl:apply-templates/>
      <div class="closingQuote"></div>
    </div>
    <xsl:apply-templates select="." mode="notes"/>
  </xsl:template>
  
  <xsl:template match="body">
    <div class="body">
      <xsl:apply-templates select="@*|node()"/>
    </div>
  </xsl:template>

  <xsl:template match="source">
    <div class="source">
      <xsl:apply-templates />
    </div>
  </xsl:template>

  <!-- figure -->
  <xsl:template match="figure">
    <table cellpadding="0" cellspacing="0">
      <xsl:apply-templates select="@align"/>
      <xsl:if test="orgchart/@width">
        <xsl:attribute name="style">
          <xsl:text>width:</xsl:text>
          <xsl:apply-templates select="@width"/>
          <xsl:text>%</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <tr>
        <td>
          <xsl:if test="@align='center'">
            <xsl:attribute name="class">td-align-center</xsl:attribute>
          </xsl:if>
          <div class="figure">
            <xsl:apply-templates select="@*[name() != 'align'] | node()"/>
          </div>
        </td>
      </tr>
    </table>
  </xsl:template>


  <xsl:template match="legend">
    <span class="legend">
      <xsl:if test="   ancestor::*/@figure-numbering='true' 
                    or ancestor::*/@figure-numbering=1 ">
          <xsl:apply-templates select="../*" mode="legend-numbering"/>
      </xsl:if>
      <xsl:apply-templates/>
    </span>
  </xsl:template>


  <xsl:template match="legend" mode="legend-numbering" />


  <xsl:template match="*" mode="legend-numbering">
    <span>
      <xsl:apply-templates select="." mode="legend-numbering-label" />
      <xsl:number from="/" level="any" format="1"/>
      <!--"magic": xsl:number uses the current type for counting,
          and that's exactly what we want here. -->
      <xsl:if test="following-sibling::*[not(self::legend)]">
        <xsl:text>, </xsl:text>
      </xsl:if>
      <xsl:text>:&#160;</xsl:text>
    </span>
  </xsl:template>

  <xsl:template match="img" mode="legend-numbering-label">
    <xsl:text>Image&#160;</xsl:text>
  </xsl:template>

  <xsl:template match="video" mode="legend-numbering-label">
    <xsl:text>Video&#160;</xsl:text>
  </xsl:template>

  <xsl:template match="*" mode="legend-numbering-label">
    <xsl:text>Fig.&#160;</xsl:text>
  </xsl:template>

  
  <xsl:template match="orgchart">
    <span class="figureItem">
      <span class="orgchart {@border-type}">
        <span class="content">
          <table>
            <tr>
              <xsl:apply-templates select="person"/>
            </tr>
          </table>
          <xsl:apply-templates select="legend"/>
        </span>
        <xsl:apply-templates select="." mode="border"/>
      </span>
    </span>
  </xsl:template>

  <xsl:template match="person">
    <td valign="top">
      <xsl:attribute name="class">open</xsl:attribute>
      <xsl:if test="parent::person and count(parent::*/*)&gt;1">
        <div>
          <xsl:attribute name="class">
            <xsl:choose>
              <xsl:when test="not(preceding-sibling::*)">leftabove</xsl:when>
              <xsl:otherwise>rightabove</xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>&#160;</div>
        <div>
          <xsl:attribute name="class">
            <xsl:choose>
              <xsl:when test="not(following-sibling::*) or not(preceding-sibling::*)">nolines</xsl:when>
              <xsl:otherwise>above</xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>&#160;</div>
      </xsl:if>
      <div>
        <xsl:if test="@division">
          <xsl:attribute name="class">divopen <xsl:if test="count(ancestor::person) = 0">topchart</xsl:if></xsl:attribute>
          <div class="divname"><xsl:value-of select="@division" /></div>
          <div class="boxside-left"></div>
          <div class="boxside-right"></div>
        </xsl:if>
        <div class="divcontents morph">
          <div class="boxc">
            <span class="box">
              <xsl:value-of select="@name" />&#160;
              <xsl:if test="count(.//person)">
                <xsl:text> (</xsl:text>
                <xsl:value-of select="number(count(.//person))" />
                <xsl:text>)</xsl:text>
              </xsl:if>
              <div class="boxside-left"></div>
              <div class="boxside-right"></div>
            </span>
          </div>
          <xsl:if test="*">
            <div class="linemiddle"><span class="">&#160;</span></div>
          </xsl:if>
          <div class="tablewrapper morph">
            <table cellspacing="0" cellpadding="0" align="center">
              <tr>
                <xsl:apply-templates select="*" />
              </tr>
            </table>
          </div>
        </div>
      </div>
    </td>
  </xsl:template>
  
  
  <!-- table -->
  <xsl:template match="include">
    <div>
      <xsl:attribute name="class">
        <xsl:text>include </xsl:text>
        <xsl:apply-templates select="@border-type"/>
      </xsl:attribute>
      <xsl:if test="@width">
        <xsl:attribute name="style">
          <xsl:text>width:</xsl:text>
          <xsl:apply-templates select="@width"/>
          <xsl:text>%</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <div class="content">
        <xsl:if test="@src != ''">
          <xsl:apply-templates />
        </xsl:if>
      </div>
      <xsl:apply-templates select="." mode="border"/>
    </div>
  </xsl:template>

  <xsl:template match="table">
    <table width="100%">
      <xsl:apply-templates select="tgroup/tbody/*"/>
    </table>
  </xsl:template>

  <xsl:template match="row">
    <xsl:variable name="pos" select="position()"/>
    <tr>
      <xsl:apply-templates>
        <xsl:with-param name="parent-pos" select="$pos"/>
      </xsl:apply-templates>
    </tr>
  </xsl:template>

  <xsl:template match="entry">
    <xsl:param name="parent-pos"/>
    <xsl:variable name="pos" select="count(preceding-sibling::entry) + 1"/>
    <xsl:variable name="start" select="../../../colspec[@colname = current()/@namest]"/>
    <xsl:variable name="end" select="../../../colspec[@colname = current()/@nameend]"/>
    <xsl:variable name="span" select="count(../../../colspec[following-sibling::colspec[@colname = current()/@nameend]]) - count(../../../colspec[following-sibling::colspec[@colname = current()/@namest]]) + 1"/>
    <td>
      <xsl:apply-templates select="../../../colspec[@colnum = $pos]" mode="width"/>
      <xsl:if test="@namest and @nameend">
        <xsl:attribute name="colspan">
          <xsl:value-of select="$span"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="class">
        <xsl:if test="$pos = 1 and $parent-pos = 1"> top-left-cell </xsl:if>
        <xsl:if test="$pos != 1 and $parent-pos = 1"> top-cell </xsl:if>
        <xsl:if test="$pos = 1 and $parent-pos != 1"> left-cell </xsl:if>
        <xsl:if test="$pos != 1 and $parent-pos != 1"> cell </xsl:if>
        <xsl:if test="$span &gt; 2"> center</xsl:if>
      </xsl:attribute>
      <xsl:if test="@align">
        <xsl:attribute name="align">
          <xsl:value-of select="@align"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:apply-templates/>
    </td>
  </xsl:template>

  <xsl:template match="colspec" mode="width">
    <xsl:attribute name="width"><xsl:value-of select="@colwidth"/>%</xsl:attribute>
  </xsl:template>


  <!-- inline -->
  <xsl:template match="a"><a href="{@href}"><xsl:apply-templates /></a
  ></xsl:template>

  <xsl:template match="strong">
    <strong>
      <xsl:apply-templates />
    </strong>
  </xsl:template>

  <xsl:template match="em">
    <em>
      <xsl:apply-templates />
    </em>
  </xsl:template>

  <xsl:template match="u">
    <u>
      <xsl:apply-templates />
    </u>
  </xsl:template>
  
  <xsl:template match="sup">
    <sup>
      <xsl:apply-templates />
    </sup>
  </xsl:template>

  <xsl:template match="sub">
    <sub>
      <xsl:apply-templates />
    </sub>
  </xsl:template>

<xsl:template match="br"><br/></xsl:template>

  <!-- special -->
  <xsl:template match="note[@view = 'default']">
    <xsl:text> </xsl:text>
    <span class="note">
      (<xsl:apply-templates />)
    </span>
    <xsl:text> </xsl:text>
  </xsl:template>


  <xsl:template match="note">
    <span class="note-nr">[<xsl:number count="note" level="any" format="1"/>]</span>
  </xsl:template>

  <xsl:template match="*" mode="notes">
    <xsl:if test="count(.//note[@view = 'below-paragraph']) != 0 and not(ancestor::ol)and not(ancestor::ul)">
      <div class="notes">
        <h4>Notes</h4>
        <div class="content">
          <ol>
            <xsl:apply-templates select=".//note[@view = 'below-paragraph']" mode="note"/>
          </ol>
        </div>
        <div class="closingNote"></div>
      </div>
    </xsl:if>
  </xsl:template>

  <xsl:template match="*" mode="below-article-notes">
    <xsl:if test="count(.//note[@view = 'below-article']) != 0 and not(ancestor::ol)and not(ancestor::ul)">
      <div class="notes below-article">
        <h2>Notes</h2>
        <div class="content">
          <ol>
            <xsl:apply-templates select=".//note[@view = 'below-article']" mode="note"/>
          </ol>
        </div>
        <div class="closingNote"></div>
      </div>
    </xsl:if>
  </xsl:template>

  <xsl:template match="note" mode="note">
    <xsl:variable name="number">
      <xsl:number count="note" level="any" format="1"/>
    </xsl:variable>
    <li value="{$number}">
      <xsl:apply-templates/>
    </li>
  </xsl:template>

  <xsl:template match="@border-type">
    <xsl:text>hasBorder border-type-</xsl:text>
    <xsl:value-of select="."/>
    <xsl:if test=". = 'soft' or . = 'hard'">
      <xsl:text>shadow</xsl:text>
    </xsl:if>
  </xsl:template>

  <xsl:template match="*" mode="border">
    <xsl:if test="@border-type">
      <span class="border">
        <span class="borderPart borderPart1"></span>
        <span class="borderPart borderPart2"></span>
        <span class="borderPart borderPart3"></span>
        <span class="borderPart borderPart4"></span>
        <span class="borderPart borderPart5"></span>
        <span class="borderPart borderPart6"></span>
        <span class="borderPart borderPart7"></span>
        <span class="borderPart borderPart8"></span>
        <span class="borderPart borderPart9"></span>
        <span class="borderPart borderPart10"></span>
        <span class="borderPart borderPart11"></span>
        <span class="borderPart borderPart12"></span>
      </span>
    </xsl:if>
  </xsl:template>

  <xsl:template match="*" mode="edge">
    <span class="edge">
      <span class="edgePart edgePart1"></span>
      <span class="edgePart edgePart2"></span>
      <span class="edgePart edgePart3"></span>
      <span class="edgePart edgePart4"></span>
      <span class="edgePart edgePart5"></span>
      <span class="edgePart edgePart6"></span>
      <span class="edgePart edgePart7"></span>
      <span class="edgePart edgePart8"></span>
      <span class="edgePart edgePart9"></span>
      <span class="edgePart edgePart10"></span>
      <span class="edgePart edgePart11"></span>
      <span class="edgePart edgePart12"></span>
    </span>
  </xsl:template>

  <xsl:template match="@text-align">
    <xsl:attribute name="style">text-align:<xsl:value-of select="."/></xsl:attribute>
  </xsl:template>

  <xsl:template match="@align">
    <xsl:attribute name="align"><xsl:value-of select="."/></xsl:attribute>
    <xsl:attribute name="class">align-<xsl:value-of select="."/></xsl:attribute>
  </xsl:template>

  <xsl:template match="video[contains(@src, 'vimeo.com')]" mode="embedded-video">
    <xsl:param name="id" select="substring-after(@src, 'vimeo.com/')"/>

    <xsl:element name="iframe">
      <xsl:attribute name="src">//player.vimeo.com/video/<xsl:value-of select="$id"/></xsl:attribute>
      <xsl:attribute name="frameborder">0</xsl:attribute>      
        <xsl:call-template name="size">
          <xsl:with-param name="width" select="@width"/>
          <xsl:with-param name="height" select="@height"/>
          <xsl:with-param name="defaultWidth" select="500"/>
          <xsl:with-param name="defaultHeight" select="281"/>
        </xsl:call-template>         
    </xsl:element>

  </xsl:template>
  
  <xsl:template match="video[contains(@src, 'youtube.com')]" mode="embedded-video">
    <xsl:param name="id" select="substring-after(@src, 'youtube.com/v/')"/>
    
    <xsl:element name="iframe">
      <xsl:attribute name="src">//www.youtube.com/embed/<xsl:value-of select="$id"/>?rel=0</xsl:attribute>
      <xsl:attribute name="frameborder">0</xsl:attribute>
        <xsl:call-template name="size">
          <xsl:with-param name="width" select="@width"/>
          <xsl:with-param name="height" select="@height"/>
          <xsl:with-param name="defaultWidth" select="400"/>
          <xsl:with-param name="defaultHeight" select="225"/>
        </xsl:call-template>      
      </xsl:element>

  </xsl:template>
  
  <xsl:template match="video" mode="embedded-video">
    <video src="{@src}">
      <xsl:call-template name="size">
        <xsl:with-param name="width" select="@width"/>
        <xsl:with-param name="height" select="@height"/>
      </xsl:call-template>
      <xsl:if test="@poster">
        <img src="{@poster}">
          <xsl:call-template name="size">
            <xsl:with-param name="width" select="@width"/>
            <xsl:with-param name="height" select="@height"/>
          </xsl:call-template>
        </img>
      </xsl:if>
    </video>
  </xsl:template>

  <xsl:template name="size">
    <xsl:param name="width"/>
    <xsl:param name="height"/>
    <xsl:param name="defaultWidth"/>
    <xsl:param name="defaultHeight"/>
    <xsl:param name="defaultAspect" select="$defaultWidth div $defaultHeight"/>
    <xsl:param name="keepAspectRatio" select="false()"/>
      <xsl:choose>
        <xsl:when test="$width">
          <xsl:attribute name="width">
            <xsl:value-of select="$width"/>
          </xsl:attribute>
        </xsl:when>
        <xsl:when test="$keepAspectRatio and $defaultAspect and $height">
          <xsl:attribute name="width">
            <xsl:value-of select="$height div $defaultAspect"/>
          </xsl:attribute>
        </xsl:when>
        <xsl:when test="$defaultWidth">
          <xsl:attribute name="width">
            <xsl:value-of select="$defaultWidth"/>
          </xsl:attribute>
        </xsl:when>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="$height">
          <xsl:attribute name="height">
            <xsl:value-of select="$height"/>
          </xsl:attribute>
        </xsl:when>
        <xsl:when test="$keepAspectRatio and $defaultAspect and $width">
          <xsl:attribute name="height">
            <xsl:value-of select="$width * $defaultAspect"/>
          </xsl:attribute>
        </xsl:when>
        <xsl:when test="$defaultHeight">
          <xsl:attribute name="height">
            <xsl:value-of select="$defaultHeight"/>
          </xsl:attribute>
        </xsl:when>
      </xsl:choose>
  </xsl:template>
  
  <xsl:template match="video">
    <span class="figureItem">
      <span>
        <xsl:attribute name="class">
          <xsl:text>video </xsl:text>
          <xsl:apply-templates select="@border-type"/>
        </xsl:attribute>
        <span class="content">
          <xsl:apply-templates select="." mode="embedded-video"/>
        </span>
        <xsl:apply-templates select="." mode="border"/>
      </span>
    </span>
  </xsl:template>
  
  <xsl:template match="img">
    <span class="figureItem">
      <span>
        <xsl:attribute name="class">
          <xsl:text>img </xsl:text>
          <xsl:apply-templates select="@border-type"/>
        </xsl:attribute>
        <span class="content">
          <img src="{@src}">
            <xsl:call-template name="size">
              <xsl:with-param name="width" select="@width"/>
              <xsl:with-param name="height" select="@height"/>
            </xsl:call-template>
          </img>
          <xsl:apply-templates/>
        </span>
        <xsl:apply-templates select="." mode="border"/>
      </span>
    </span>
  </xsl:template>

  <!-- Render table -->

  <xsl:template match="table">
  <div>
    <xsl:attribute name="align">
      <xsl:choose>
        <xsl:when test="@align">
          <xsl:value-of select="@align"/>
        </xsl:when>
        <xsl:otherwise>center</xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
    <xsl:apply-templates select="caption"/>
    <table border="0">

      <xsl:copy-of select="@cellpadding"/>

      <xsl:attribute name="width"><!-- literal width on table elm fails in Firefox xslt -->
        <xsl:value-of select="@width"/>
        <xsl:text>%</xsl:text>
      </xsl:attribute>

      <xsl:attribute name="class">
        <xsl:choose>
          <xsl:when test="@color">color_<xsl:value-of select="@color" /></xsl:when>
          <xsl:otherwise>color_grey</xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
          <xsl:when test="@border"> border_<xsl:value-of select="@border" /></xsl:when>
          <xsl:otherwise> border_no</xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>

      <!-- Default the cellpadding attribute to 0. -->
      <xsl:choose>
        <xsl:when test="@cellspacing">
          <xsl:copy-of select="@cellspacing"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="cellspacing">0</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>

      <xsl:apply-templates select="tbody"/>
    </table>
  </div>
  </xsl:template>

  <xsl:template match="caption">
    <div class="caption">
      <xsl:apply-templates select="node()"/>
    </div>
  </xsl:template>

  <xsl:template match="tbody">
    <tbody>
      <xsl:attribute name="class">
        <xsl:text>rowcoloring_</xsl:text><xsl:choose><xsl:when test="../@alternaterowcolor='true' or ../@alternaterowcolor='1'">alternate</xsl:when><xsl:otherwise>normal</xsl:otherwise></xsl:choose>
      </xsl:attribute>

      <xsl:apply-templates select="tr"/>
    </tbody>
  </xsl:template>

  <xsl:template match="tr">
    <tr>
      <!-- Add an even or odd class to each row so we can alternate the row colors. -->
      <xsl:attribute name="class">
        <xsl:choose>
          <xsl:when test="position() mod 2 = 1">evenorodd_odd</xsl:when>
          <xsl:otherwise>evenorodd_even</xsl:otherwise>
        </xsl:choose>
      </xsl:attribute>

      <xsl:apply-templates select="td|th"/>
    </tr>
  </xsl:template>

  <xsl:template match="td|th">
    <xsl:element name="{local-name()}">
      <xsl:copy-of select="@rowspan"/>
      <xsl:copy-of select="@colspan"/>
      <xsl:copy-of select="@bgcolor"/>
      <xsl:attribute name="valign">top</xsl:attribute>
      <xsl:apply-templates select="node()"/>
    </xsl:element>
  </xsl:template>

<xsl:template name="parent_id"><xsl:if test="../@id"
><xsl:attribute name="id"><xsl:value-of select="../@id"/></xsl:attribute></xsl:if
></xsl:template>

  <!-- behaviors -->
  <xsl:template match="*[(@behavior='section' or not(@behavior)) and @id and @coex]"><xsl:call-template name="section_behavior"/></xsl:template>

  <xsl:template name="section_behavior">
    <a role="section_collapse_expand_expand" id="{@id}_section_content_expand" style="color:green;display:block;font-style:italic" href="#" onclick="collapse_or_expand('{@id}_section_content');collapse_or_expand('{@id}_section_content_expand');"><i><xsl:value-of select="@coex"/></i></a><div class="section" id="{@id}_section_content"  style="display:none"
  ><a role="section_collapse_expand_collapse" style="font-style:italic;color:green" href="#" onclick="collapse_or_expand('{@id}_section_content');collapse_or_expand('{@id}_section_content_expand');"><i>Collapse section</i></a><br
  /><xsl:apply-templates/></div
  ></xsl:template>

</xsl:stylesheet>
