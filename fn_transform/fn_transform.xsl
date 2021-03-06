<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:template match="/">
        
        <xsl:variable name="output_01">
            <xsl:sequence 
                select="let $transform := transform(
                map {
                'stylesheet-location': 'xslt001.xsl',
                'source-node': document('input.xml')
                })
                return $transform?output"/>
        </xsl:variable>
        
        <xsl:variable name="output_02">
            <xsl:sequence 
                select="let $transform := transform(
                map {
                'stylesheet-location': 'xslt002.xsl',
                'source-node': $output_01
                })
                return $transform?output"/>
        </xsl:variable>
        
        <xsl:result-document href="output.xml">
            <xsl:sequence select="$output_02"/>
        </xsl:result-document>
        
    </xsl:template>
    
    
    
</xsl:stylesheet>