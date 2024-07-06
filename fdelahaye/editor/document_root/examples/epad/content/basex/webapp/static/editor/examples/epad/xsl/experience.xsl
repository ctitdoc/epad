<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template name="experience">
<xsl:param name="section"/>
<a id="{$section/@id}_section_content_expand" style=
"color:green;display:block;font-style:italic" onclick=
"collapse_or_expand('{$section/@id}_section_content');collapse_or_expand('{$section/@id}_section_content_expand');"
href="#"><i><xsl:value-of select="$section/h"/></i></a>
<div class="section" id="{$section/@id}_section_content" style=
"display:none"><a id="{$section/@id}_section_content_collapse"
style="font-style:italic;color:green" href="#" onclick=
"collapse_or_expand('{$section/@id}_section_content');collapse_or_expand('{$section/@id}_section_content_expand');">
<i>Collapse section</i></a><br />
<xsl:apply-templates select="$section/h"/>
<xsl:apply-templates select="$section/*[local-name() != 'h']|$section/text()|$section/@*[name != 'id']"/>
</div>
</xsl:template>


<xsl:template match="h[../@id and ../../@id='XML_SGML_projects']" />
<h3 xmlns="http://www.w3.org/1999/xhtml" 
 id="{../@id}" class="section-numbering-false"><xsl:apply-templates select="*|text()"/>
</h3>
</xsl:stylesheet>
