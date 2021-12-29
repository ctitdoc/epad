<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:functx="http://www.functx.com"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        version="2.0">

    <xsl:param name="format">markdown</xsl:param>
    <xsl:output method="text" />
    <xsl:strip-space elements="*" />

    <!-- Required for li indenting -->
    <xsl:function name="functx:repeat-string" as="xs:string">
        <xsl:param name="stringToRepeat" as="xs:string?"/>
        <xsl:param name="count" as="xs:integer"/>
        <xsl:sequence select="string-join((for $i in 1 to $count return $stringToRepeat), '')"/>
    </xsl:function>

    <xsl:template match="/html/body">
        <xsl:apply-templates select="*" />
    </xsl:template>

    <xsl:template match="li">
        <xsl:value-of select="functx:repeat-string('    ', count(ancestor::li))"/>
        <xsl:choose>
            <xsl:when test="name(..) = 'ol'">
                <xsl:value-of select="position()" />
                <xsl:text>. </xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>* </xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="normalize-space(text())" />
        <xsl:apply-templates select="* except (ul|ol)" />
        <xsl:text>  &#xa;</xsl:text>
        <xsl:apply-templates select="ul|ol" />
    </xsl:template>

    <!-- Don't process text() nodes for these - prevents unnecessary whitespace -->
    <xsl:template match="ul|ol">
        <xsl:apply-templates select="* except text()" />
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

    <xsl:template match="*[matches(name(), 'h[1-6]')]">
        <xsl:value-of select="functx:repeat-string('#', xs:integer(substring(name(), 2)))" /><xsl:text> </xsl:text><xsl:value-of select="normalize-space(.)" />
        <!--xsl:apply-templates select="*|text()" /-->
        <xsl:text>&#xa;&#xa;</xsl:text> <!-- Block element -->
    </xsl:template>

    <xsl:template match="pre">
        <xsl:text>    </xsl:text>
        <xsl:apply-templates/>
        <xsl:text>&#xa;&#xa;</xsl:text> <!-- Block element -->
    </xsl:template>

    <xsl:template match="pre/br">
        <xsl:text>&#xa;    </xsl:text>
    </xsl:template>

    <xsl:template match="blockquote">
        <xsl:text>&gt;   </xsl:text>
        <xsl:value-of select="replace(text(), '&#xa;', '&#xa;&gt; ')" />
        <xsl:text>&#xa;&#xa;</xsl:text> <!-- Block element -->
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