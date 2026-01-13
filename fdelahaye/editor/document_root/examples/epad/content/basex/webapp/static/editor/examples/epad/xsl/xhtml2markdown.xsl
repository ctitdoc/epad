<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        version="1.0">

    <xsl:param name="format">markdown</xsl:param>
    <xsl:output method="text" />
    <xsl:strip-space elements="*" />

    <!-- ========================================================= -->
    <!-- Utility: repeat string N times (XSLT 1.0)                -->
    <!-- ========================================================= -->
    <xsl:template name="repeat-string">
        <xsl:param name="string"/>
        <xsl:param name="count"/>

        <xsl:if test="$count &gt; 0">
            <xsl:value-of select="$string"/>
            <xsl:call-template name="repeat-string">
                <xsl:with-param name="string" select="$string"/>
                <xsl:with-param name="count" select="$count - 1"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>


    <!-- Required for li indenting -->

    <xsl:template match="/html/body">
        <xsl:apply-templates select="*" />
    </xsl:template>

    <xsl:template match="/html/head"/>

    <xsl:template match="li">
        <!-- indentation: 4 spaces per ancestor li -->
        <xsl:call-template name="repeat-string">
            <xsl:with-param name="string" select="'    '"/>
            <xsl:with-param name="count" select="count(ancestor::li)"/>
        </xsl:call-template>

        <xsl:choose>
            <xsl:when test="name(..) = 'ol'">
                <xsl:value-of select="position()"/>
                <xsl:text>. </xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>* </xsl:text>
            </xsl:otherwise>
        </xsl:choose>

        <xsl:value-of select="normalize-space(text())"/>

        <!-- inline content -->
        <xsl:apply-templates select="*[not(self::ul or self::ol)]"/>

        <xsl:text>  &#xa;</xsl:text>

        <!-- nested lists -->
        <xsl:apply-templates select="ul|ol"/>
    </xsl:template>

    <!-- Don't process text() nodes for these - prevents unnecessary whitespace -->
    <xsl:template match="ul|ol">
        <xsl:apply-templates select="*" />
    </xsl:template>

    <xsl:template match="a[not(@href) or @href='#']"><xsl:value-of select="normalize-space(.)"/></xsl:template>

    <xsl:template match="a[@href and @href!='#']"><xsl:text>[</xsl:text><xsl:value-of select="normalize-space(.)"/><xsl:text>](</xsl:text><xsl:value-of select="@href" /><xsl:text>)</xsl:text></xsl:template>

    <xsl:template match="span/text()"><xsl:value-of select="normalize-space(.)"/></xsl:template>
    <xsl:template match="span"><xsl:apply-templates/></xsl:template>
    <xsl:template match="del/text()">~~<xsl:value-of select="normalize-space(.)"/>~~</xsl:template>

    <xsl:template match="img"><xsl:text>![</xsl:text><xsl:value-of select="@src"/><xsl:text>](</xsl:text><xsl:value-of select="@src"/><xsl:text>)</xsl:text></xsl:template>

    <xsl:template match="strong|b">
        <xsl:text>**</xsl:text>
        <!--xsl:value-of select="." /-->
        <xsl:apply-templates/>
        <xsl:text>**</xsl:text>
    </xsl:template>
    <xsl:template match="em|i">
        <xsl:text>*</xsl:text>
        <!--xsl:value-of select="." /-->
        <xsl:apply-templates/>
        <xsl:text>*</xsl:text>
    </xsl:template>
    <xsl:template match="code">
        <!-- todo: skip the ` if inside a pre -->
        <xsl:text>`</xsl:text>
        <xsl:value-of select="." />
        <xsl:text>`</xsl:text>
    </xsl:template>

    <xsl:template match="br"><xsl:text>  &#xa;</xsl:text></xsl:template>

    <!-- Block elements -->
    <xsl:template match="hr">
        <xsl:text>----&#xa;&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="div">
        <xsl:apply-templates select="*|text()" />
        <xsl:text>&#xa;&#xa;</xsl:text> <!-- Block element -->
    </xsl:template>

    <xsl:template match="p|technical_restriction"><xsl:apply-templates select="*|text()" /><xsl:text>&#xa;&#xa;</xsl:text></xsl:template>

    <xsl:template name="repeat-char">
        <xsl:param name="char"/>
        <xsl:param name="count"/>
        <xsl:if test="$count &gt; 0">
            <xsl:value-of select="$char"/>
            <xsl:call-template name="repeat-char">
                <xsl:with-param name="char" select="$char"/>
                <xsl:with-param name="count" select="$count - 1"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template match="h1|h2|h3|h4|h5|h6">
        <xsl:call-template name="repeat-char">
            <xsl:with-param name="char" select="'#'"/>
            <xsl:with-param name="count"
                            select="number(substring(name(), 2))"/>
        </xsl:call-template>
        <xsl:text> </xsl:text>
        <xsl:value-of select="normalize-space(.)"/>
        <xsl:text>&#xa;&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="pre">
        <xsl:text>    </xsl:text>
        <xsl:apply-templates/>
        <xsl:text>&#xa;&#xa;</xsl:text> <!-- Block element -->
    </xsl:template>

    <xsl:template match="pre/br">
        <xsl:text>&#xa;    </xsl:text>
    </xsl:template>

    <xsl:template name="string-replace-all">
        <xsl:param name="text"/>
        <xsl:param name="search"/>
        <xsl:param name="replace"/>

        <xsl:choose>
            <xsl:when test="contains($text, $search)">
                <xsl:value-of select="substring-before($text, $search)"/>
                <xsl:value-of select="$replace"/>
                <xsl:call-template name="string-replace-all">
                    <xsl:with-param name="text" select="substring-after($text, $search)"/>
                    <xsl:with-param name="search" select="$search"/>
                    <xsl:with-param name="replace" select="$replace"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$text"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="blockquote">
        <xsl:text>&gt; </xsl:text>
        <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="normalize-space(.)"/>
            <xsl:with-param name="search" select="'&#xa;'"/>
            <xsl:with-param name="replace" select="'&#xa;&gt; '"/>
        </xsl:call-template>
        <xsl:text>&#xa;&#xa;</xsl:text>
    </xsl:template>



    <!-- div collapse/expand -->

    <xsl:template match="a[@role='collapse_expand_expand' or @role='section_collapse_expand_expand' ]"><xsl:if test="$format='markdown'"><xsl:call-template name="md_div_collapse_expand"/></xsl:if><xsl:if test="$format='textile'"><xsl:call-template name="tl_div_collapse_expand"/></xsl:if></xsl:template>
    <xsl:template match="a[@role='collapse_expand_collapse' or @role='section_collapse_expand_collapse']"/>
    <xsl:template match="div[preceding-sibling::a[(@role='collapse_expand_expand' or @role='section_collapse_expand_expand') and current()/@id=substring-before(@id,'_expand')]]"/>

    <xsl:template name="md_div_collapse_expand">
        <xsl:variable name="the_div" select="substring-before(@id,'_expand')"/>
        <xsl:text>&lt;details&gt;</xsl:text>
        <xsl:text>&lt;summary&gt;</xsl:text><xsl:value-of select="./*"/>
        <xsl:text>&lt;/summary&gt;</xsl:text><xsl:text>&#xa;&#xa;</xsl:text><xsl:apply-templates select="./following-sibling::div[@id=$the_div]/*" />
        <xsl:text>&lt;/details&gt;</xsl:text><xsl:text>&#xa;&#xa;</xsl:text>
    </xsl:template>

    <xsl:template name="tl_div_collapse_expand">
        <xsl:variable name="the_div" select="substring-before(@id,'_expand')"/>
        <xsl:text>{{collapse(</xsl:text><xsl:value-of select="./*"/><xsl:text>)&#xa;</xsl:text>
        <xsl:apply-templates select="./following-sibling::div[@id=$the_div]/*" />
        <xsl:text>&#xa;}}&#xa;</xsl:text>
    </xsl:template>



<!-- tables as demonstrated in :


## Tables

| Left columns  | Right columns |
| - |:-:|
| left foo      | right foo     |
| left bar      | right bar     |
| left baz      | right baz     |

-->

    <xsl:template match="table">
        <xsl:for-each select=".//tr">
            <xsl:choose>
                <xsl:when test="position()=1">
                    <xsl:apply-templates/><xsl:text>|&#xa;</xsl:text><xsl:for-each select=".//th|.//td"><xsl:text>| - </xsl:text></xsl:for-each><xsl:text>|&#xa;</xsl:text>
                </xsl:when>
                <xsl:otherwise><xsl:apply-templates/><xsl:text>|&#xa;</xsl:text></xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="table//tr//td"><xsl:text>| </xsl:text><xsl:apply-templates/></xsl:template>

    <xsl:template match="table//tr//th"><xsl:text>| *</xsl:text><xsl:apply-templates/><xsl:text>* </xsl:text></xsl:template>

    <xsl:template match="table/text()"/>

    <xsl:template match="tr/text()"/>

    <xsl:template match="th/p|td/p"><xsl:apply-templates/></xsl:template>

    <xsl:template match="th//text()|td//text()"><xsl:value-of select="normalize-space(translate(.,'&#xA;&#xD;', ' '))"/></xsl:template>

    <xsl:template match="th//br|td//br"><xsl:if test="$format='markdown'"><xsl:call-template name="md_table_lf"/></xsl:if><xsl:if test="$format='textile'"><xsl:call-template name="tl_table_lf"/></xsl:if></xsl:template>

    <xsl:template name="md_table_lf"><xsl:text>&lt;</xsl:text><xsl:text>br/</xsl:text><xsl:text>&gt;</xsl:text></xsl:template>

    <xsl:template name="tl_table_lf"><xsl:text>&#xa;</xsl:text></xsl:template>

</xsl:stylesheet>