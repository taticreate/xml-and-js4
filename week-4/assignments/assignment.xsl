<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
          <h1>Catalog</h1>
          <ul>
            <xsl:for-each select="//product">
                <li>
                <article>
                    <hgroup>
                      <!-- product id is h3  -->
                      <h3>Product ID: <xsl:value-of select="//product/@product_id"></xsl:value-of></h3>
                      <!-- product description as paragraph  -->
                      <p><xsl:value-of select="//product/@description"></xsl:value-of></p>
                    </hgroup>
                        <table border="1">
                        <!-- items in columns -->
                            <tr> 
                                <th>Item Number</th> 
                                <th>Price</th> 
                                <th>Gender</th> 
                                <th>Small</th> 
                                <th>Medium</th> 
                                <th>Large</th> 
                                <th>Extra Large</th>
                            </tr> 
                            
                            <xsl:for-each select="catalog_item"> 
                                <tr>
                                <td><xsl:value-of select="item_number"/></td>
                                <td><xsl:value-of select="price"/></td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="@gender='Women'"> W </xsl:when>
                                        <xsl:otherwise>M</xsl:otherwise>
                                    </xsl:choose>
                                </td>
                                <td>
                                <!--small-->
                                    <xsl:for-each select="size">
                                        <xsl:choose>
                                            <xsl:when test="@description='Small'">
                                                <table border="1">
                                                    <tr> 
                                                        <th>Color</th> 
                                                        <th>Image</th> 
                                                    </tr>                                            
                                                    <xsl:for-each select="color_swatch">
                                                        <tr>
                                                            <td><xsl:value-of select="."/></td>
                                                            <td><xsl:value-of select="@image"/></td>   
                                                        </tr>
                                                    </xsl:for-each>                                    
                                                </table>   
                                            </xsl:when>
                                            <xsl:otherwise></xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:for-each>
                                </td>
                                <td>
                                <!-- medium -->
                                <xsl:for-each select="size">
                                    <xsl:choose>
                                        <xsl:when test="@description='Medium'">
                                            <table border="1">
                                                <tr> 
                                                    <th>Color</th> 
                                                    <th>Image</th> 
                                                </tr>                                            
                                                <xsl:for-each select="color_swatch">
                                                    <tr>
                                                        <td><xsl:value-of select="."/></td>
                                                        <td><xsl:value-of select="@image"/></td>   
                                                    </tr>
                                                </xsl:for-each>                                    
                                            </table>   
                                        </xsl:when>
                                        <xsl:otherwise></xsl:otherwise>
                                    </xsl:choose>
                                </xsl:for-each>
                                </td>
                                <td>
                                <!-- large -->
                                    <xsl:for-each select="size">
                                        <xsl:choose>
                                            <xsl:when test="@description='Large'">
                                                <table border="1">
                                                    <tr> 
                                                        <th>Color</th> 
                                                        <th>Image</th> 
                                                    </tr>                                            
                                                    <xsl:for-each select="color_swatch">
                                                        <tr>
                                                            <td><xsl:value-of select="."/></td>
                                                            <td><xsl:value-of select="@image"/></td>   
                                                        </tr>
                                                    </xsl:for-each>                                    
                                                </table>   
                                            </xsl:when>
                                            <xsl:otherwise></xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:for-each>
                                </td>
                                <td>
                                <!--  x large -->
                                    <xsl:for-each select="size">
                                        <xsl:choose>
                                            <xsl:when test="@description='Extra Large'">
                                                <table border="1">
                                                    <tr> 
                                                        <th>Color</th> 
                                                        <th>Image</th> 
                                                    </tr>                                            
                                                    <xsl:for-each select="color_swatch">
                                                        <tr>
                                                            <td><xsl:value-of select="."/></td>
                                                            <td><xsl:value-of select="@image"/></td>   
                                                        </tr>
                                                    </xsl:for-each>                                    
                                                </table>   
                                            </xsl:when>
                                            <xsl:otherwise></xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:for-each>
                                </td>
                                </tr>
                            </xsl:for-each> 
                        </table>
                </article>
                </li>
            </xsl:for-each>
          </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
