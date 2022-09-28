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
        <!-- CSS only -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"></link>
      <!-- JavaScript Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
      </head>
      <body>
        <table class="table">
          <tr bgcolor="#9acd32">
            <th scope="col">Departamentos</th>
            <th scope="col">Inscritos</th>
            <th scope="col">Partido1</th>
            <th scope="col">Partido2</th>
            <th scope="col">Partido3</th>
            <th scope="col">Blanco</th>
            <th scope="col">Porcentaje abstención</th>
          </tr>
          <xsl:for-each select="/Departamentos/Departamento">
            <tr>
              <th cope="row">
                <xsl:value-of select="@d" />
              </th>
              <th >
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
                <xsl:value-of select="format-number(((((Partido1 + Partido2 + Partido3 + Blanco)-Inscritos))div Inscritos), '#%')" />
              </th>
            </tr>
          </xsl:for-each >
          <tr>
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
            <th></th>
            <th></th>
            <th></th>
          </tr>
        </table>
        <br></br>
        <table class="table">
          <tr bgcolor="#9acd32">
            <th scope="col">Departamentos</th>
            <th scope="col">Inscritos</th>
            <th scope="col">Partido1</th>
            <th scope="col">Partido2</th>
            <th scope="col">Partido3</th>
            <th scope="col">Total partidos</th>
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
        <h2>Cantidad de letras</h2>
        <xsl:for-each select="/Departamentos/Departamento">
            <p>
             <xsl:value-of select="@d"/> Tiene <xsl:value-of select="string-length(@d)"/> caracteres
            </p>
          </xsl:for-each >
        </body>
      </html>
    </xsl:template>


  </xsl:stylesheet>
