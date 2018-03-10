<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>Mess Feedback</h2>
    <table border="1">
      <tr bgcolor="#ffffff">
        <th>MESSNAME</th>
        <th>LOCATION</th>
        <th>USER</th>
        <th>FEEDBACK</th>
        <th>STATUS</th>
      </tr>
      <xsl:for-each select="messfeedback/userfeedback">
        <tr>
          <td><xsl:value-of select="messname"/></td>
          <td><xsl:value-of select="location"/></td>
          <xsl:for-each select="feedbacks">
            <td><xsl:value-of select="username"/></td>
            <td><xsl:value-of select="feedback"/></td>
          </xsl:for-each>
          <td><xsl:value-of select="status"/></td>                 
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>