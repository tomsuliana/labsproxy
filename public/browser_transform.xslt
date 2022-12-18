<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!--xsl:template говорит о том, что тут будет замена. match показывает, к какой части документа это применимо-->

    <!--Внутри шаблона пишем наше преобразование-->
  <xsl:template match="/hash">
    <html>
      <head><title>Ответ</title></head>
      <body><p><xsl:value-of select="message"></xsl:value-of></p></body>
    </html>
  </xsl:template>
<xsl:template match="/objects">
    <!--Внутри шаблона пишем наше преобразование-->

    <html>

      <head>

        <title>Ответ</title>

      </head>

      <body>

        <table border = "1">
          <thead>
            <tr><th colspan = "2">Палиндромы</th></tr>
          </thead>

          <!--Цикл-->
          <xsl:for-each select="object">

            <!--Создание переменной-->

            <tbody>

              <tr>
                  <th>
                  <!--Извлекаем значение из XML-тега-->
                  <xsl:value-of select="elem"></xsl:value-of>
                </th>
                <th>
                  <xsl:value-of select="binary"></xsl:value-of>
                </th>

              </tr>

            </tbody>

          </xsl:for-each>

        </table>

      </body>

    </html>

  </xsl:template>
</xsl:stylesheet>