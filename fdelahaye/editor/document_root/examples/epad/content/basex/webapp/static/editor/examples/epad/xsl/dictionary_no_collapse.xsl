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

  <!-- xsl:output method="html" doctype-public="html" indent="yes" / -->
  <xsl:output method="xhtml" indent="no" />

  <xsl:template match="dictionary">
    <div class="article">
      <div class="header">
        <div class="heading">
          <xsl:apply-templates select="h"/>
          <div class="decoration"></div>
        </div>
      </div>
      <xsl:apply-templates select="*[name() != 'meta' and name() != 'h']"/>
      <xsl:apply-templates select="." mode="below-article-notes"/>
    </div>
  </xsl:template>

  <xsl:template match="dataset_definition|data_definition|data_constraints_definition|data_constraint_definition">
    <div class="section">
      <xsl:apply-templates />
    </div>
  </xsl:template>

  <xsl:template match="dataset_definition[@view='list']|data_definition[@view='list']|data_constraints_definition[@view='list']|data_constraint_definition[@view='list']">
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

  <xsl:template match="dataset_definition|data_definition|data_constraints_definition|data_constraint_definition" mode="list-item">
    <li>
      <div class="section-li li-content">
        <xsl:apply-templates select="."/>
      </div>
    </li>
  </xsl:template>

  <xsl:template match="*[not(@view)]/dataset_definition/h|*[not(@view)]/data_definition/h|*[not(@view)]/data_constraints_definition/h|*[not(@view)]/data_constraint_definition/h" mode="number">
    <xsl:attribute name="class">
      <xsl:text>section-numbering-</xsl:text>
      <xsl:choose>
        <xsl:when test="/dictionary/@section-numbering = 'true'" >true</xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
    <xsl:if test="/dictionary/@section-numbering='true'">
      <span class="h-numbering">
        <xsl:number count="dataset_definition|data_definition|data_constraints_definition|data_constraint_definition" from="/*" level="multiple" format="1"/>.
      </span>
    </xsl:if>
  </xsl:template>

  <!-- headers -->
  <xsl:template match="dictionary/h">
    <h1><xsl:call-template name="parent_id"/>
<xsl:apply-templates select="@*"/>
<xsl:apply-templates />
    </h1>
  </xsl:template>

<xsl:template name="business_term_header">
<xsl:apply-templates select="@*"/>
<xsl:apply-templates select="."  mode="number"/>
<xsl:apply-templates />
</xsl:template>

<xsl:template name="business_term_switch_and_managed"
><xsl:if test="../@managed and ../@managed='false'"
><p style="font-style: italic;color: grey"><i>This feature is not managed by Bilendi platform.</i></p>
</xsl:if
><xsl:if test="../@managed and ../@managed='true' and ../@implementation_class"
><a role="collapse_expand_expand" id="{../@id}_impl_content_expand" style="display:block;font-style:italic" href="#" onclick="collapse_or_expand('{../@id}_impl_content');collapse_or_expand('{../@id}_impl_content_expand');"><i>Implementation</i></a><div id="{../@id}_impl_content" style="display:none;font-style:italic;color:grey"
><a role="collapse_expand_collapse" style="font-style:italic" href="#" onclick="collapse_or_expand('{../@id}_impl_content');collapse_or_expand('{../@id}_impl_content_expand');"><i>Collapse implementation</i></a><br
/><i>Implementation class : <xsl:value-of select="../@implementation_class"/></i></div
></xsl:if
><xsl:if test="../@switch and ../@switch='enabled'"
><p style="font-style: italic;color: grey"><i>This feature is switchable and enabled by default.</i></p
></xsl:if
><xsl:if test="../@switch and ../@switch='disabled'"
><p style="font-style: italic;color: grey"><i>This feature is switchable and disabled by default.</i></p
></xsl:if
></xsl:template>

<xsl:template match="dataset_definition/h|data_definition/h|data_constraints_definition/h|data_constraint_definition/h">
<h2><xsl:call-template name="parent_id"/><xsl:call-template name="business_term_header"/></h2><xsl:call-template name="business_term_switch_and_managed"/></xsl:template>

<xsl:template match="dataset_definition/section/h|data_definition/section/h|data_constraints_definition/section/h|data_constraint_definition/section/h">
<h3><xsl:call-template name="parent_id"/><xsl:call-template name="business_term_header"/></h3><xsl:call-template name="business_term_switch_and_managed"/></xsl:template>

  <xsl:template match="dataset_definition/section/section/h|data_definition/section/section/h|data_constraints_definition/section/section/h|data_constraint_definition/section/section/h">
    <h4><xsl:call-template name="parent_id"/><xsl:call-template name="business_term_header"/></h4><xsl:call-template name="business_term_switch_and_managed"/></xsl:template>

  <xsl:template match="dataset_definition/section/section/section/h|data_definition/section/section/section/h|data_constraints_definition/section/section/section/h|data_constraint_definition/section/section/section/h">
    <h5><xsl:call-template name="parent_id"/><xsl:call-template name="business_term_header"/></h5><xsl:call-template name="business_term_switch_and_managed"/></xsl:template>


  <xsl:template match="dataset_definition/data_definition/h">
    <h3><xsl:call-template name="parent_id"/><xsl:call-template name="business_term_header"/></h3><xsl:call-template name="business_term_switch_and_managed"/></xsl:template>

  <xsl:template match="dataset_definition/data_definition/data_constraints_definition/h">
    <h4><xsl:call-template name="parent_id"/><xsl:call-template name="business_term_header"/></h4><xsl:call-template name="business_term_switch_and_managed"/></xsl:template>

  <xsl:template match="dataset_definition/data_definition/data_constraints_definition/data_constraint_definition/h">
    <h5><xsl:call-template name="parent_id"/><xsl:call-template name="business_term_header"/></h5><xsl:call-template name="business_term_switch_and_managed"/></xsl:template>

  <xsl:template match="data_definition/data_constraints_definition/h">
    <h3><xsl:call-template name="parent_id"/><xsl:call-template name="business_term_header"/></h3><xsl:call-template name="business_term_switch_and_managed"/></xsl:template>

  <xsl:template match="data_definition/data_constraints_definition/data_constraint_definition/h">
<h4><xsl:call-template name="parent_id"/><xsl:call-template name="business_term_header"/></h4><xsl:call-template name="business_term_switch_and_managed"/></xsl:template>

</xsl:stylesheet>
