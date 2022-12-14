<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">

        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <title>Real Estate Report</title>
            </head>

            <style>
      table {
         border: 2px solid rgb(18, 139, 219);
         border-collapse: collapse;
         width: 100%;
         text-align: center;
         background-color: #ceecff;
      }

      th, td {
         border: 1px solid rgb(18, 139, 219);
         
      }
   </style>
   <body>
      <center>
      <h2>Tabla de bacterias</h2></center>
                <table>
                    <thead>
                        <tr>
                            <th>Field</th>
                            <th>Distribution</th>
                            <th>Unit</th>
                            <th>Time</th>
                            <th>RegionName</th>
                            <th>Category</th>
                            <th>Value</th>
                            <th>Nombre Bacteria</th>
                            <th>Antibiotico testado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//row">
                            <xsl:if test="contains(RegionCode,'PL')">
                                <tr>
                                    <td>
                                        <xsl:value-of select="FIELD1" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Distribution" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Unit" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Time" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="RegionName" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Category" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Value" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Bacteria" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Antibiotic" />
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>

                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>