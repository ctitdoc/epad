<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- 
  Note for developers taking this stylesheet
  as starting point: Use a treeTransform on the
  generated HTML to see the resulting tags inside 
  Xopus: 

    <x:view name="HTML View">
      <x:transform xsl="xsl/stylesheet.xsl"/>
      <x:treeTransform/>
    </x:view>
-->

  <xsl:output method="html" doctype-public="html" indent="yes" />
  <xsl:param name="xopus">false</xsl:param>

  <xsl:include href="dates.xsl"/>
  <xsl:include href="meta.xsl"/>

  <xsl:param name="internal-nav" select="epad/h"/>

  <!-- Main page structure -->
  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="epad/h"/></title>
      </head>
      <body>
        
        <div id="page">

          <div id="fakeNavigation"></div>
          
          <div id="articleBody">
            <xsl:apply-templates/>
          </div>
          
        </div>
          <div id="articleFooter">
            <div class="disclaimer"></div>
          </div>


      </body>
    </html>
  </xsl:template>

  <xsl:template match="epad">
    <div class="article">
      <div class="header">
        <xsl:apply-templates select="meta/date"/>
        <div class="heading">
          <xsl:apply-templates select="h"/>
          <xsl:apply-templates select="meta/author"/>
          <xsl:apply-templates select="meta/categories"/>
          <div class="decoration"></div>
        </div>
      </div>
      <xsl:apply-templates select="*[name() != 'meta' and name() != 'h']"/>
      <xsl:apply-templates select="." mode="below-article-notes"/>
    </div>
  </xsl:template>

  <xsl:template match="section|dataset_definition|data_definition|data_constraints_definition|property_definition|property_constraints_definition">
    <div class="section">
      <xsl:apply-templates />
    </div>
  </xsl:template>

  <xsl:template match="section[@view='list']|dataset_definition[@view='list']|data_definition[@view='list']|data_constraints_definition[@view='list']|property_definition[@view='list']|property_constraints_definition[@view='list']">
    <div>
      <xsl:attribute name="class">
        <xsl:text> section list </xsl:text>
        <xsl:apply-templates select="@border-type"/>
      </xsl:attribute>
      <xsl:apply-templates select="*[local-name() != 'section' and local-name() != 'dataset_definition' and local-name() != 'data_definition' and local-name() != 'data_constraints_definition' and local-name() != 'property_definition' and local-name() != 'property_constraints_definition']"/>
      <div class="content">
        <ul>
          <xsl:apply-templates select="section|dataset_definition|data_definition|data_constraints_definition|property_definition|property_constraints_definition" mode="list-item"/>
        </ul>
      </div>
      <xsl:apply-templates select="." mode="border"/>
    </div>
    <xsl:apply-templates select="." mode="notes"/>
  </xsl:template>

  <xsl:template match="section|dataset_definition|data_definition|data_constraints_definition|property_definition|property_constraints_definition" mode="list-item">
    <li>
      <div class="section-li li-content">
        <xsl:apply-templates select="."/>
      </div>
    </li>
  </xsl:template>

  <!-- accordeon -->

  <!--   tabs -->

  <xsl:template match="*" mode="number"></xsl:template>

  <xsl:template match="*[not(@view)]/section|dataset_definition|data_definition|data_constraints_definition|property_definition|property_constraints_definition/h" mode="number">
    <xsl:attribute name="class">
      <xsl:text>section-numbering-</xsl:text>
      <xsl:choose>
        <xsl:when test="/epad/@section-numbering = 'true'" >true</xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>

    <xsl:if test="/epad/@section-numbering='true'">
      <span class="h-numbering">
        <xsl:number count="epad|section|dataset_definition|data_definition|data_constraints_definition|property_definition|property_constraints_definition" from="/epad" level="multiple" format="1"/>.
      </span>
    </xsl:if>
  </xsl:template>

  <!-- headers -->
  <xsl:template match="epad/h">
    <h1>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates />
    </h1>
  </xsl:template>

  <xsl:template match="section|dataset_definition/h">
    <h2>
      <xsl:apply-templates select="."  mode="number"/>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates />
    </h2>
  </xsl:template>

  <xsl:template match="section|data_definition/h|ol/h|ul/h">
    <h3>
      <xsl:apply-templates select="."  mode="number"/>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates />
    </h3>
  </xsl:template>

  <xsl:template match="section|data_constraints_definition|property_definition/h|hli/h">
    <h4>
      <xsl:apply-templates select="."  mode="number"/>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates />
    </h4>
  </xsl:template>

  <xsl:template match="section|property_constraints_definition/h">
    <h5>
      <xsl:apply-templates select="."  mode="number"/>
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
  <xsl:template match="p">
    <p>
      <xsl:apply-templates select="@*"/>
      <xsl:apply-templates />
    </p>
    <xsl:apply-templates select="." mode="notes"/>
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
  <xsl:template match="a">
    <a href="{@href}">
      <xsl:apply-templates />
    </a>
  </xsl:template>

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

  <xsl:template match="br">
    <br/>
  </xsl:template>

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

</xsl:stylesheet>
