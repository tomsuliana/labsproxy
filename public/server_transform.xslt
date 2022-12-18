<!--Server_transform.xslt-->

<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!--xsl:template говорит о том, что тут будет замена. match показывает, к какой части документа это применимо-->
    <xsl:template match="/hash">
    <html>
      <head><title>Ответ</title></head>
      <body><p><xsl:value-of select="message"></xsl:value-of></p></body>
    </html>
  </xsl:template>
  <xsl:template match="/objects">
    <!--Внутри шаблона пишем наше преобразование-->

    <table border = "1">

      <thead>

        <tr>

          <th>#</th>
          <th>Число</th>
          <th>Квадрат</th>

        </tr>

      </thead>

      <!--Цикл-->
      <xsl:for-each select="object">

        <!--Создание переменной-->
        <xsl:variable name="counter" select="position()"/>

        <tbody>

          <tr>

            <th>
              <!--Извлекаем значение из переменной (обратите внимание на $)-->
              <xsl:value-of select="$counter"></xsl:value-of>
            </th>
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

  </xsl:template>

</xsl:stylesheet>