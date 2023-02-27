<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Match the root element and output the clients element -->
  <xsl:template match="/">
    <clients>
      <xsl:apply-templates select="project/client"/>
    </clients>
  </xsl:template>
  
  <!-- Match each client element and output the transformed client element -->
  <xsl:template match="client">
    <xsl:variable name="client-name" select="nom"/>
    <xsl:variable name="client-product" select="/project/produits/produit[nom=$client-name]"/>
    <client>
      <nom><xsl:value-of select="nom"/></nom>
      <adresse><xsl:value-of select="adresse"/></adresse>
      <ville><xsl:value-of select="ville"/></ville>
      <produit><xsl:value-of select="concat($client-name,'-',$client-product/version,'.',$client-product/type)"/></produit>
    </client>
  </xsl:template>
  
</xsl:stylesheet>
