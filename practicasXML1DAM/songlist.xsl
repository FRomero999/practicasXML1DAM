<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : songlist.xsl
    Created on : 15 de febrero de 2023, 10:52
    Author     : FranciscoRomeroGuill
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:strip-space elements="*" />
    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>songlist.xsl</title>
                <style>
                    table{
                        border-collapse: collapse;
                        border: solid;
                    }
                    table tr th{
                        background-color:black;
                        color:white;
                        padding: 1em;
                        border: solid;
                        border-color: black;
                    }
                    table tr td{
                        padding: 1em;
                        border: solid;
                    }
                    body{
                        display: flex;
                        flex-direction: column;
                        align-items:center;
                    }
                    h1{
                        margin: 2em;
                    }
                    p{
                        text-align:center;
                    }
                </style>
            </head>
            <body>
                <h1>Listado de canciones</h1>
                <h3>
                    <xsl:value-of select="count(/songlist/song[artist='The Beatles'])" />
                </h3>
                <table>
                    <tr>
                        <th>Titulo</th>
                        <th>Disco</th>
                        <th>Cantante</th>
                        <th>Escritor</th>
                        <th>Productor</th>
                        <th>Fecha</th>
                        <th>Racha</th>
                        <th>Posición</th>
                    </tr>
                    <xsl:for-each select="/songlist/song">
                        <xsl:if test="artist='The Beatles'">
                            <tr>
                                <td><xsl:value-of select="title" /></td>
                                <td><xsl:value-of select="appears" /></td>
                                <td><xsl:value-of select="artist" /></td>
                                <td><xsl:value-of select="writers" /></td>
                                <td><xsl:value-of select="producer" /></td>
                                <td><xsl:value-of select="released" /></td>
                                <td><xsl:value-of select="streak" /></td>
                                <td><xsl:value-of select="position" /></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                    
                </table>
                <p>Created with love for you</p>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
