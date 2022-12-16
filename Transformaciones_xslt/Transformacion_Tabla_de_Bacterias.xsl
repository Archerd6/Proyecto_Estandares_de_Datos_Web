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
                    <h2>Tabla de bacterias</h2>
                </center>
                <table>
                    <thead>
                        <tr>
                            <th>Nombre Bacteria </th>
                            <th>Antibiotico testado</th>
                            <th>Porcentaje de resistencia</th>
                        </tr>
                    </thead>
                    <tbody>

                        <xsl:for-each select="//row[Value>20]">
                            <xsl:sort select="Value" data-type="number" order="descending" />
                            <xsl:if
                                test="Bacteria [generate-id()=generate-id (key('idBacteria',.) [1])] or Value[generate-id()= generate-id (key('idValue',.)[1])]">
                                <tr>
                                    <td>
                                        <xsl:value-of select="Bacteria" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Antibiotic" />
                                    </td>
                                    <td><xsl:value-of select="Value" />%</td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>

                    </tbody>
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>