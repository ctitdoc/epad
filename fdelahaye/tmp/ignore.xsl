<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude" version="1.0"
>
  <xsl:param name="ignore"> none </xsl:param>

  <xsl:template match="*">
    <xsl:copy xml:space="preserve">
    <xsl:copy-of select="@*"/>
      <xsl:apply-templates select="*"/>
    </xsl:copy>
  </xsl:template>

  <!--xsl:template match="*[@ignore_for]">
    <xsl:variable name="should_be_ignored">
      <xsl:call-template name="processingTemplate">
        <xsl:with-param name="datalist" select="string(@ignore_for)"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:if test="$should_be_ignored != 'true'">
      <xsl:copy xml:space="preserve">
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </xsl:if>
  </xsl:template-->

  <!-- xsl:template match="@ignore_for"/ -->

  <xsl:template name="processingTemplate">
    <xsl:param name="datalist"/>
    <xsl:variable name="ignore_for_value" select="concat(substring-before($datalist, ' '), ' ')"/>
    <xsl:choose>
      <xsl:when test="$datalist =''">false</xsl:when>
      <xsl:when test="not(contains($ignore,$ignore_for_value))">
        <xsl:call-template name="processingTemplate">
          <xsl:with-param name="datalist" select="substring-after($datalist,' ')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:when test="contains($ignore,$ignore_for_value)">true</xsl:when>
    </xsl:choose>

  </xsl:template>

</xsl:stylesheet>