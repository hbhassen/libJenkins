<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


  <xsl:template match="/">
    <deployables>
      <xsl:apply-templates select="//deployable"/>
    </deployables>
  </xsl:template>

  <xsl:template match="deployable">
    <xsl:variable name="deployable-artifactId" select="artifactId"/>
    <xsl:variable name="deployable-dependency" select="/project/dependencies/dependency[artifactId=$deployable-artifactId]"/>

    <deployable>
      <xsl:copy-of select="name"/>
      <xsl:copy-of select="groupId"/>
      <xsl:copy-of select="artifactId"/>
      <xsl:copy-of select="type"/>
      <xsl:copy-of select="scanPlaceholders"/>
      <xsl:copy-of select="targetPath"/>
      <xsl:copy-of select="tags"/>
      <file>
        <xsl:value-of select="concat($deployable-artifactId,'-',$deployable-dependency/version,'.',$deployable-dependency/type)"/>
      </file>
    </deployable>
  </xsl:template>

</xsl:stylesheet>
