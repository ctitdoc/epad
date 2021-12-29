<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" doctype-public="xml" indent="no" />
    <xsl:param name="xopus">false</xsl:param>

    <xsl:template match="@*|node()"><xsl:copy><xsl:apply-templates select="@*|node()"/></xsl:copy></xsl:template>
    <xsl:template match="*[local-name()='textNode']"><xsl:apply-templates/></xsl:template>
    <xsl:template match="@id|@xopus_xmlid|@class"/>
</xsl:stylesheet>
