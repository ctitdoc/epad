<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" version="1.0"
>

  <xsl:template match="@*|node()">
    <xsl:copy xml:space="preserve">
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="include">
    <include>
      <xsl:apply-templates select="@*"/>
      <xi:include href="{@src}">
      <xi:fallback>
        unresolved included file
      </xi:fallback>
      </xi:include>
    </include>
  </xsl:template>

</xsl:stylesheet>