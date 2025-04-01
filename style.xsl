<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html lang="pt-br">
    <head>
      <meta charset="UTF-8"/>
      <title>Notícias - Departamento de HIV/Aids</title>
      <style>
        body {
          font-family: sans-serif;
          background: #f5f5f5;
          padding: 20px;
        }
        .news-card {
          background: white;
          padding: 16px;
          margin-bottom: 12px;
          border-radius: 8px;
          box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }
        .news-card h3 {
          margin: 0;
          font-size: 18px;
        }
        .news-card p {
          margin: 5px 0;
        }
        .news-card small {
          color: #666;
        }
      </style>
    </head>
    <body>
      <h1><xsl:value-of select="rss/channel/title"/></h1>
      <xsl:for-each select="rss/channel/item">
        <div class="news-card">
          <h3><a href="{link}" target="_blank"><xsl:value-of select="title"/></a></h3>
          <p><xsl:value-of select="description"/></p>
          <small><xsl:value-of select="pubDate"/></small>
        </div>
      </xsl:for-each>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
