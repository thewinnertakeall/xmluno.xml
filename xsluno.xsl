<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf8" indent="yes"/>
  <xsl:template match="/">
    <xsl:param name="partido1">0</xsl:param>
    <xsl:param name="suma">0</xsl:param>
    <html>
      <head>
        <title>xsluno.xsl</title>
        <link rel="alternate" type="application/rss+xml" title="Subscribe to What's New" href="http://your-site.com/your-feed.rss" />
      </head>
      <body>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Departamentos</th>
            <th>Inscritos</th>
            <th>Partido1</th>
            <th>Partido2</th>
            <th>Partido3</th>
            <th>Total partidos</th>
            <th>Porcentaje abstención</th>
          </tr>
          <xsl:for-each select="/Departamentos/Departamento">
            <tr>
              <th>
                <xsl:value-of select="@d" />
              </th>
              <th>
                <xsl:value-of select="Inscritos" />
              </th>
              <th>
                <xsl:value-of select="Partido1" />
              </th>
              <th>
                <xsl:value-of select="Partido2" />
              </th>
              <th>
                <xsl:value-of select="Partido3" />
              </th>
              <th>
                <xsl:value-of select="Blanco" />
              </th>
              <th>
                <xsl:value-of select="format-number(Partido1 + Partido2 + Partido3, '#')" />
              </th>
              <th>
                <xsl:value-of select="format-number(((((Partido1 + Partido2 + Partido3 + Blanco)-Inscritos))div Inscritos), '#%')" />
              </th>
            </tr>
          </xsl:for-each >
          <tr bgcolor="#9acd32">
            <th>TOTALES</th>
            <th></th>
            <th>
              <xsl:value-of select="sum(/Departamentos/Departamento/Partido1)"/>
            </th>
            <th>
              <xsl:value-of select="sum(/Departamentos/Departamento/Partido2)"/>
            </th>
            <th>
              <xsl:value-of select="sum(/Departamentos/Departamento/Partido3)"/>
            </th>
            <th>
              <xsl:value-of select="sum(/Departamentos/Departamento/Blanco)"/>
            </th>
          </tr>
        </table>

        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Departamentos</th>
            <th>Inscritos</th>
            <th>Partido1</th>
            <th>Partido2</th>
            <th>Partido3</th>
            <th>Total partidos</th>
            <th>Porcentaje abstención</th>
          </tr>
          <xsl:for-each select="/Departamentos/Departamento[@d= 'Atlántico']">
            <tr>
              <th>
                <xsl:value-of select="@d" />
              </th>
              <th>
                <xsl:value-of select="Inscritos" />
              </th>
              <th>
                <xsl:value-of select="Partido1" />
              </th>
              <th>
                <xsl:value-of select="Partido2" />
              </th>
              <th>
                <xsl:value-of select="Partido3" />
              </th>
              <th>
                <xsl:value-of select="Blanco" />
              </th>
            </tr>
          </xsl:for-each >
        </table>
        <h1>Cantidad de letras</h1>
        </body>
      </html>
    </xsl:template>


  </xsl:stylesheet>
