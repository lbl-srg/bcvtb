<?xml version='1.0' encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>
 
<!-- Fix references. -->
<xsl:template match="part|chapter|appendix|
                     sect1|sect2|sect3|sect4|sect5|section" mode="label.markup">
  <xsl:text>\hyperlink{</xsl:text>
  <xsl:value-of select="@xml:id"/>
  <xsl:text>}{\ref*{</xsl:text>
  <xsl:value-of select="@xml:id"/>
  <xsl:text>} \emph{</xsl:text>
  <xsl:value-of select="title"/>
  <xsl:text>}}</xsl:text>
</xsl:template>
<xsl:template match="figure|table" mode="label.markup">
  <xsl:text>\ref{</xsl:text>
  <xsl:value-of select="@xml:id"/>
  <xsl:text>}</xsl:text>
</xsl:template>



  <xsl:param name="latex.class.options">letter, 11pt</xsl:param>
<!-- Table of contents -->
<xsl:param name="doc.lot.show"></xsl:param>

<xsl:param name="doc.collab.show">0</xsl:param>
<xsl:param name="latex.output.revhistory">0</xsl:param>
<xsl:param name="doc.publisher.show">0</xsl:param>

<!-- We want TOC links in the titles (not in the page numbers), and blue.  -->

<xsl:param name="latex.hyperparam">linktocpage,colorlinks,linkcolor=blue,citecolor=blue,urlcolor=blue</xsl:param>


</xsl:stylesheet>
