<!--
/**
 * Copyright (c) 2014 by Kamen Yotov
 */
-->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:tc2="http://www.garmin.com/xmlschemas/TrainingCenterDatabase/v2">
    <xsl:template match="/"><xsl:text>
activity,source,sport,lap,index,time,latitude,longitude,altitude,distance,hr,
</xsl:text>
        <xsl:for-each select="//tc2:Trackpoint">
            <xsl:value-of select="../../../tc2:Id" /><xsl:text>,</xsl:text>
            <xsl:value-of select="../../../tc2:Creator/tc2:Name" /><xsl:text>,</xsl:text>
            <xsl:value-of select="../../../@Sport" /><xsl:text>,</xsl:text>
            <xsl:value-of select="../../@StartTime" /><xsl:text>,</xsl:text>
            <xsl:number /><xsl:text>,</xsl:text>
            <xsl:value-of select="tc2:Time" /><xsl:text>,</xsl:text>
            <xsl:value-of select="tc2:Position/tc2:LatitudeDegrees" /><xsl:text>,</xsl:text>
            <xsl:value-of select="tc2:Position/tc2:LongitudeDegrees" /><xsl:text>,</xsl:text>
            <xsl:value-of select="tc2:AltitudeMeters" /><xsl:text>,</xsl:text>
            <xsl:value-of select="tc2:DistanceMeters" /><xsl:text>,</xsl:text>
            <xsl:value-of select="tc2:HeartRateBpm/tc2:Value" /><xsl:text>,</xsl:text>
            <xsl:text>
</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
