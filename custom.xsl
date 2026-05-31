<?xml version='1.0' encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>
  <xsl:template match="phrase[@role='red']">
    <xsl:text>
        \textcolor{red}{
    </xsl:text>
    <xsl:apply-templates/>
    <xsl:text>
        }
    </xsl:text>
  </xsl:template>

  <xsl:template match="section/simpara">
      <xsl:text>
\p </xsl:text>
    <xsl:apply-templates/>
    <xsl:text>

</xsl:text>
  </xsl:template>

  <xsl:template match="part|chapter|appendix|
                       sect1|sect2|sect3|sect4|sect5|section" mode="label.markup">
    <xsl:text>\ref{</xsl:text>
    <xsl:value-of select="(@id|@xml:id)[1]"/>
    <xsl:text>}</xsl:text>
  </xsl:template>


  <xsl:param name="xref.with.number.and.title" select="1"></xsl:param>

  <xsl:param name="local.l10n.xml" select="document('')"/>
  <l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
    <l:l10n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0" language="en">
     <l:context name="title">
        <l:template name="note" text="Nota"/>
        <l:template name="tip" text="Dica"/>
        <l:template name="important" text="Importante"/>
        <l:template name="warning" text="Aviso"/>
        <l:template name="caution" text="Cuidado"/>
        <l:template name="figure" text="Figura %n. %t"/>
        <l:template name="table" text="Tabela %n. %t"/>
      </l:context>
     <l:context name="xref-number-and-title">
        <l:template name="section" text="Regra %n, %t"/>
      </l:context>
    </l:l10n>
  </l:i18n>

</xsl:stylesheet>


