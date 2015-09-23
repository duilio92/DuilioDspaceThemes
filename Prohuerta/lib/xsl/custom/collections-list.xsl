<?xml version="1.0" encoding="UTF-8"?>
<!--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

-->
<!--
Autor: Duilio Ray
-->
<xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1"
	xmlns:dri="http://di.tamu.edu/DRI/1.0/"
	xmlns:mets="http://www.loc.gov/METS/"
	xmlns:xlink="http://www.w3.org/TR/xlink/"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
	xmlns:dim="http://www.dspace.org/xmlns/dspace/dim"
	xmlns:xhtml="http://www.w3.org/1999/xhtml"
	xmlns:mods="http://www.loc.gov/mods/v3"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="i18n dri mets xlink xsl dim xhtml mods dc">

   <xsl:output indent="yes"/>
	<!-- matcheo por el listado de comunidades y ahi incluyo el listado de colecciones-->
	<xsl:template match="*[@id='aspect.artifactbrowser.CommunityBrowser.div.comunity-browser']" >
			<!-- obtengo el listado de colecciones usando mets-->
			AAAA	
<xsl:value-of
  select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[3]"
  /> 
		<!--	<xsl:variable name="data" select="./mets:dmdSec/mets:mdWrap/mets:xmlData/dim:dim"/>
			  <div class="artifact-description">
            <div class="artifact-title">
                <a href="{@OBJID}">
                    <span class="Z3988">
                        <xsl:choose>
                            <xsl:when test="string-length($data/dim:field[@element='title'][1]) &gt; 0">
                                <xsl:value-of select="$data/dim:field[@element='title'][1]"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <i18n:text>xmlui.dri2xhtml.METS-1.0.no-title</i18n:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </span>
                </a>
</div>
</div>-->

	</xsl:template>  


	</xsl:stylesheet>
