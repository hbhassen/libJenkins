<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Sélection de l'élément "dependencies" -->
  <xsl:template match="/">
 
          <xsl:apply-templates select="//dependency"/>

  </xsl:template>
          <!-- Boucle sur chaque élément "dependency" -->
   <xsl:template match="dependency">

              <xsl:value-of select="artifactId"/><xsl:text>-</xsl:text><xsl:value-of select="version"/><xsl:text>.</xsl:text><xsl:value-of select="type"/>   
              

    </xsl:template >
</xsl:stylesheet>
