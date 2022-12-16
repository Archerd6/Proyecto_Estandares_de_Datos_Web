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
                    <h2>Tabla de grupos de estudio</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>Distribution</th>
                                <th>Categoría <br> (grupo de edad o el género) </br></th>
                                <th>Año del estudio</th>
                                <th>Nacionalidad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="//row">
                                <tr>
                                    <td>
                                        <xsl:value-of select="Distribution" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Category" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Time" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="RegionName" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </center>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>