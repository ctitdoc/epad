<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- accordeon -->

<xsl:template match="section[@view='accordion']|dataset_definition[@view='accordion']|data_definition[@view='accordion']|data_constraints_definition[@view='accordion']|property_definition[@view='accordion']|property_constraints_definition[@view='accordion']">
  <xsl:apply-templates select="*[local-name() != 'section' and local-name() != 'dataset_definition' and local-name() != 'data_definition' and local-name() != 'data_constraints_definition' and local-name() != 'property_definition' and local-name() != 'property_constraints_definition']"/>
  <div>
    <xsl:attribute name="class">
      <xsl:text> section accordion </xsl:text>
      <xsl:apply-templates select="@border-type"/>
    </xsl:attribute>
    <div class="content">
      <xsl:apply-templates select="section|dataset_definition|data_definition|data_constraints_definition|property_definition|property_constraints_definition"/>
    </div>
    <div class="accordion-stripe-top"></div>
    <div class="accordion-stripe-bottom"></div>
  </div>
</xsl:template>

<xsl:template match="section[@view='accordion']|dataset_definition[@view='accordion']|data_definition[@view='accordion']|data_constraints_definition[@view='accordion']|property_definition[@view='accordion']|property_constraints_definition[@view='accordion']/section|dataset_definition|data_definition|data_constraints_definition|property_definition|property_constraints_definition">
<div>
  <xsl:attribute name="class">
    <xsl:choose>
      <xsl:when test="processing-instruction('expanded')">showContent</xsl:when>
      <xsl:otherwise>hideContent</xsl:otherwise>
    </xsl:choose>
  </xsl:attribute>
  <div>
    <xsl:attribute name="class">accordeon-section</xsl:attribute>
    <xsl:apply-templates select="h" mode="accordion"/>
    <xsl:if test="processing-instruction('expanded') ">
      <div class="content">
        <xsl:apply-templates select="*[name() != 'h']"/>
      </div>
    </xsl:if>
    <xsl:apply-templates select="." mode="edge"/>
  </div>
</div>
</xsl:template>

<xsl:template match="section[@view='accordion']|dataset_definition[@view='accordion']|data_definition[@view='accordion']|data_constraints_definition[@view='accordion']|property_definition[@view='accordion']|property_constraints_definition[@view='accordion']/section|dataset_definition|data_definition|data_constraints_definition|property_definition|property_constraints_definition/h" mode="accordion">
<div class="accordion-header">
  <div class="corner corner-left-top"></div>
  <div class="corner corner-left-bottom"></div>
  <h4>
    <xsl:apply-templates />
  </h4>
  <div class="corner corner-right-top"></div>
  <div class="corner corner-right-bottom"></div>
</div>
</xsl:template>


<!--tabs-->
<xsl:template match="section[@view='tabs']|dataset_definition[@view='tabs']|data_definition[@view='tabs']|data_constraints_definition[@view='tabs']|property_definition[@view='tabs']|property_constraints_definition[@view='tabs']">
<xsl:apply-templates select="*[local-name() != 'section' and local-name() != 'dataset_definition' and local-name() != 'data_definition' and local-name() != 'data_constraints_definition' and local-name() != 'property_definition' and local-name() != 'property_constraints_definition']"/>
<div>
  <xsl:attribute name="class">
    <xsl:text>section tabs </xsl:text>
    <xsl:apply-templates select="@border-type"/>
  </xsl:attribute>
  <div class="tab-items">
    <xsl:apply-templates select="section|dataset_definition|data_definition|data_constraints_definition|property_definition|property_constraints_definition/h" mode="tab-item"/>
  </div>
  <div class="tab-content">
    <div class="content">
      <xsl:apply-templates select="*[processing-instruction('expanded')]"/>
    </div>
    <xsl:apply-templates select="." mode="edge"/>
  </div>
</div>
</xsl:template>

<xsl:template match="section[@view='tabs']|dataset_definition[@view='tabs']|data_definition[@view='tabs']|data_constraints_definition[@view='tabs']|property_definition[@view='tabs']|property_constraints_definition[@view='tabs']/section|dataset_definition|data_definition|data_constraints_definition|property_definition|property_constraints_definition/h" mode="tab-item">
<div>
  <xsl:attribute name="class">tab-item <xsl:if test="../processing-instruction('expanded')">chosen-tab-item</xsl:if></xsl:attribute>
  <div class="corner corner-left-top"></div>
  <xsl:if test=".. = $internal-nav/*"><div class="chosen-tab-item-left"></div><div class="chosen-tab-item-top"></div></xsl:if>
  <h4>
    <xsl:apply-templates />
  </h4>
  <div class="corner corner-right-top"></div>
  <xsl:if test="../processing-instruction('expanded')"><div class="chosen-tab-item-right"></div></xsl:if>
</div>
</xsl:template>

        <!-- after tabs-->
</xsl:stylesheet>