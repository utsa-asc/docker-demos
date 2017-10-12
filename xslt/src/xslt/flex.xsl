<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  exclude-result-prefixes="#all"
  >

<xsl:output
  method="html"
  encoding="UTF-8"
  indent="yes"
  omit-xml-declaration="yes"
  doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
   />


<xsl:strip-space elements="*"/>

<xsl:template match="/">
  <html>
    <body>
      <h1>Flex Occupancy Results</h1>
  <xsl:message>match /</xsl:message>
  <xsl:variable name="facilities" select="FacilityData/Facility" />
  <xsl:message>
    facility count: <xsl:value-of select="count($facilities)" />
  </xsl:message>
  <xsl:choose>
     <xsl:when test="count($facilities) &gt;= 1" >
       <!-- valid alert found, output info: -->
       <table>
         <tr>
           <th>Name</th>
           <th>Capacity</th>
           <th>Occupancy</th>
           <th>Available</th>
           <th>Percentage</th>
         </tr>
       <xsl:apply-templates select="$facilities"/>
      </table>
     </xsl:when>
     <xsl:otherwise>
       <!-- no valid alerts found, do nothing -->
     </xsl:otherwise>
   </xsl:choose>
  </body>
</html>
</xsl:template>

<xsl:template match="Facility">
  <xsl:message>match Facility</xsl:message>
  <xsl:variable name="name" select="Description" />
  <xsl:variable name="occs" select="Occupancy" />
  <xsl:variable name="capSum" select="sum(Occupancy/Capacity)" />
  <xsl:variable name="occSum" select="sum(Occupancy/Occupied)" />
  <xsl:variable name="availSum" select="sum(Occupancy/Available)" />
  <xsl:variable name="percentage" select="($occSum div $capSum) * 100" />
  <tr>
    <td><xsl:value-of select="$name" /></td>
    <td><xsl:value-of select="$capSum" /></td>
    <td><xsl:value-of select="$occSum" /></td>
    <td><xsl:value-of select="$availSum" /></td>
    <td><xsl:value-of select="$percentage" /></td>
  </tr>
</xsl:template>
</xsl:stylesheet>
