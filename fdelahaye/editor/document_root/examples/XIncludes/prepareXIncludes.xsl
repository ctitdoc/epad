<?xml version="1.0"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:xi="http://www.w3.org/2001/XInclude"
  version="1.0">

  <xsl:template match="@*|node()">
    <xsl:copy><xsl:apply-templates select="@*|node()"/></xsl:copy>
  </xsl:template> 

  <!-- Prepend each header with an autoincrementing number. -->
  <xsl:template match="header">
    <header><xsl:apply-templates select="@*|node()" /></header>
    <xi:include href="include.xml"/>
  </xsl:template>
  
</xsl:stylesheet>