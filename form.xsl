<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match = "/"> 

        <html>
            <body>
                <h2><xsl:value-of select="dataInputForm/title/caption"/></h2> 
                <br></br>
            </body>
            
            <form action="">

                <!-- TextBox -->
                <xsl:for-each select="dataInputForm/textbox">
                    
                    <label for="fname"><xsl:value-of select="caption"/></label>
                    <input type="text" id="fname" name="{name/text()}" maxlength='{maxlength/text()}' size='{size/text()}'></input> <br></br>
                    <br></br>
       
                </xsl:for-each> 
                
                <!-- CheckBox -->
                <xsl:for-each select="dataInputForm/checkboxes">

                        <label for="fname"><xsl:value-of select="caption"/></label>
                        <br></br>
                        <br></br>

                        
                       <xsl:for-each select="checkboxgroup/checkbox">

                            <input type="checkbox" id="{value/text()}" name="{value/text()}" value="{value/text()}"/>
                            <label for="{value/text()}"> <xsl:value-of select="caption"/></label>
                            <br></br>
                        </xsl:for-each> 
                                 
                </xsl:for-each> 

                <br></br>
                <br></br>

                <!-- select -->

                <xsl:for-each select="dataInputForm/select">

                <label for="{name/text()}"><xsl:value-of select="caption"/></label>
                <br></br>
                <br></br>

                <select name="test" id="test">
                    <xsl:for-each select="options/option">

                            <option value="{value/text()}"><xsl:value-of select="caption"/></option>
                            <br></br>

                       
                    </xsl:for-each>

                </select>

                </xsl:for-each> 

                <br></br>
                <br></br>

                
                
                <!-- Radio -->

                <xsl:for-each select="dataInputForm/radio">

                    <label for="{name/text()}"><xsl:value-of select="caption"/></label>
                    <br></br>
                    <br></br>

                   <xsl:for-each select="radiogroup/radioelement">

                        <input type="radio" id="{value/text()}" name="{value/text()}" value="{value/text()}"></input>
                        <label for="{value/text()}"><xsl:value-of select="caption"/></label> 
                        <br></br>


                    </xsl:for-each>

                    
                </xsl:for-each>

                <br></br>
                <br></br>

            <xsl:for-each select="dataInputForm/multiselect">

                <label for="{name/text()}"><xsl:value-of select="caption"/></label>
                <br></br>
                <br></br>

                <select name="test2" id="test2" multiple="{size/text()}">
                       <xsl:for-each select="options/option">

                            <option value="{value/text()}"><xsl:value-of select="caption"/></option>

                        </xsl:for-each>
                </select> 


            </xsl:for-each>


            </form> 

        </html>




    </xsl:template>

</xsl:stylesheet>