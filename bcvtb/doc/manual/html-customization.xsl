<?xml version='1.0'?> 
<xsl:stylesheet  
       xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0"> 
<!--  <xsl:import href="/usr/share/xml/docbook/stylesheet/nwalsh/xhtml/docbook.xsl"/>-->
  <xsl:import href="/usr/share/xml/docbook/stylesheet/nwalsh/xhtml/chunk.xsl"/>
  <xsl:param name="html.stylesheet" select="'bcvtb-manual.css'"/> 
  <xsl:param name="section.autolabel" select="1"/>
  <!-- Add chapter number to section number -->
  <xsl:param name="section.label.includes.component.label" select="1"/>
  <xsl:param name="use.extensions" select="1"/>
  <xsl:param name="tablecolumns.extension" select="1"/>
  <xsl:param name="callouts.extension" select="1"/>
  <xsl:param name="textinsert.extension" select="1"/>
  <xsl:param name="use.id.as.filename" select="'1'"/>
  <xsl:param name="toc.section.depth">7</xsl:param>
  <xsl:param name="chunk.section.depth" select="1"/>
  <xsl:param name="navig.graphics" select="1"/>
  <xsl:param name="admon.graphics" select="1"/>
  <xsl:param name="highlight.source" select="1"/>
<!-- Header and footer -->
  <xsl:param name="header.rule" select="0"></xsl:param>
  <xsl:param name="footer.rule" select="0"></xsl:param>
  <xsl:param name="suppress.header.navigation" select="0"></xsl:param>

<!-- Table of contents -->
<xsl:param name="generate.toc">
 appendix  nop
 article   toc,title
 book      toc,title,table
 chapter   toc
 part      toc
 preface   nop
 qandadiv  nop
 qandaset  nop
 reference toc,title
 section   toc
 set       toc
 </xsl:param>

<!-- Tree in the navigation header -->
<xsl:template name="breadcrumbs">
  <xsl:param name="this.node" select="."/>
  <div class="breadcrumbs">
    <xsl:for-each select="$this.node/ancestor::*">
      <span class="breadcrumb-link">
        <a>
          <xsl:attribute name="href">
            <xsl:call-template name="href.target">
              <xsl:with-param name="object" select="."/>
              <xsl:with-param name="context" select="$this.node"/>
            </xsl:call-template>
          </xsl:attribute>
          <xsl:apply-templates select="." mode="title.markup"/>
        </a>
      </span>
      <xsl:text> &gt; </xsl:text>
    </xsl:for-each>
    <!-- And display the current node, but not as a link -->
    <span class="breadcrumb-node">
      <xsl:apply-templates select="$this.node" mode="title.markup"/>
    </span>
  </div>
</xsl:template>

<!-- Add search to the header -->
<xsl:template name="user.header.content">
    <!-- Search begins -->
  <p>
    <div class="search">
      <form name="gs" action="http://google1.lbl.gov/search" method="get">
	Search
	<input maxlength="256" size="40" name="q" />
	<input type="hidden" name="btnG" class="submit" />
	<!-- 'BCVTB' is the lbnl tag for the google search collection in 
	     https://simulationresearch.lbl.gov/bcvtb and
             https://gaia.lbl.gov/bcvtb -->
        <input type="hidden" name="site" value="BCVTB"/>
	<input type="hidden" name="output" value="xml_no_dtd" />
	<input type="hidden" name="as_dt" value="i" />
	
	<input type="hidden" name="client" value="default_frontend" />
	<input type="hidden" name="oe" value="UTF-8" />
	<input type="hidden" name="proxystylesheet" value="default_frontend" /></form>
    </div> 
  </p>
     <!--  search ends -->
  <xsl:call-template name="breadcrumbs"/>
</xsl:template>

<!-- Cross references to figures should not include the caption -->
<xsl:param name="local.l10n.xml" select="document('')"/> 
<l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0"> 
  <l:l10n language="en"> 
    <l:context name="xref-number-and-title"> 
      <l:template name="figure" text="Figure %n"/> 
    </l:context>    
  </l:l10n>
</l:i18n>


</xsl:stylesheet>  
