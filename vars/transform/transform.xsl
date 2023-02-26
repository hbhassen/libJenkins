<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Deployables</title>
      </head>
      <body>
        <h1>Deployables</h1>
        <table>
          <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Group ID</th>
            <th>Artifact ID</th>
            <th>Classifier</th>
            <th>Target Path</th>
            <th>Tags</th>
            <th>file</th>
          </tr>
          <xsl:apply-templates select="//deployable"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="deployable">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="type"/></td>
      <td><xsl:value-of select="groupId"/></td>
      <td><xsl:value-of select="artifactId"/></td>
      <td><xsl:value-of select="classifier"/></td>
      <td><xsl:value-of select="targetPath"/></td>

      <td><xsl:apply-templates select="tags/tag"/></td>
      <td><xsl:apply-templates select="//dependency"/></td>
    </tr>
  </xsl:template>

  <xsl:template match="tag">
    <xsl:value-of select="."/><xsl:text>, </xsl:text>
  </xsl:template>
  <xsl:template match="dependency">

  <xsl:value-of select="artifactId"/><xsl:text>-</xsl:text><xsl:value-of select="version"/><xsl:text>.</xsl:text><xsl:value-of select="type"/>   
  

</xsl:template >
</xsl:stylesheet>
