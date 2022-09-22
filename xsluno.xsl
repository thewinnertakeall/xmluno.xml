<?xml version="1.0"?>

<!--
    Document   : XSLUno.xsl
    Created on : 22 de agosto de 2022, 02:25 AM
    Author     : Mateo and Sergio
    Description:
        1.	Se tiene información sobre las votaciones de gobernadores en Colombia así: (40 puntos)

Departamentos               Inscritos   Partido1 Partido2  Partido3  Blanco 
Cundinamarca          	600        100         120          180           200
Antioquia                                900        300          110          120           180
Valle			890         130          200         380           130
Arauca			690         140         108          130           120
Atlántico			790          110         112          180          105			
……
Utilizar XML y XSL para estructurar y crear un listado o tabla con las siguientes características:
1. Informar el total del partido1, partido2 y partido3 en Colombia. (8 puntos)
2. Informar el porcentaje de abstención (no votantes) por departamento.(8 puntos)
3. Filtrar el informe por medio del atributo región “caribe”. (Atlántico). (10 puntos)
4. Informar la cantidad de letras que tiene cada uno de los contenidos en el nodo departamentos que tienen como atributo región ”andina”, (Cundinamarca-12, Antioquia-9). (8 puntos)
5. Modelo del Árbol XML. (6 puntos)
3. Aprendizaje independiente (valor 10 puntos)
.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>    
    <xsl:template match="/">
        <html>
            <head>
                <title>xsluno.xsl</title>
            </head>
            <body>
                <table border="1">
	
      <tr bgcolor="#9acd32">
        <th>Departamentos</th>
        <th>Inscritos</th>
        <th>Partido1</th>
        <th>Partido2</th>
        <th>Partido3</th>
        <th>Blanco</th>
      </tr>
	<xsl:for-each select="//Departamento" >
      <tr>
        <th><xsl:value-of select="@d" /></th>
        <th><xsl:value-of select="Inscritos" /></th>
        <th><xsl:value-of select="Partido1" /></th>
        <th><xsl:value-of select="Partido2" /></th>
        <th><xsl:value-of select="Partido3" /></th>
        <th><xsl:value-of select="Blanco" /></th>
      </tr>
	</xsl:for-each >
    </table> 
  </body>
  </html>
</xsl:template>
               

</xsl:stylesheet>
