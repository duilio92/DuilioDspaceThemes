<?xml version="1.0" encoding="UTF-8"?>
<!--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

-->
<!--
    TODO: Describe this XSL file    
    Author: Alexey Maslov
    
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
    
    <xsl:import href="../dri2xhtml-alt/dri2xhtml.xsl"/> 
    <xsl:import href="/lib/xsl/core/page-structure.xsl"/>
    <xsl:import href="/lib/xsl/core/navigation.xsl"/>
    <xsl:import href="/lib/xsl/aspect/artifactbrowser/common.xsl"/>
    <xsl:import href="/lib/xsl/aspect/artifactbrowser/item-view.xsl"/>
    <xsl:import href="/lib/xsl/custom/advsearch.xsl"/>    
    <xsl:import href="/lib/xsl/custom/linkEnviarItem.xsl"/>
    <xsl:import href="/lib/xsl/custom/slider.xsl"/>
    <xsl:import href="/lib/xsl/custom/footer.xsl"/>
    <xsl:import href="/lib/xsl/custom/buildHead.xsl"/>
    <xsl:import href="/lib/xsl/custom/elements-custom.xsl"/>
    <xsl:import href="/lib/xsl/custom/add-button-load-item.xsl"/>
    <xsl:import href="/lib/xsl/custom/youtube-renderer.xsl"/>
    <xsl:import href="/lib/xsl/custom/rss-renderer.xsl"/>
    <xsl:import href="/lib/xsl/custom/dropboxlink-renderer.xsl"/>
    <xsl:import href="/lib/xsl/custom/gdrivelink-renderer.xsl"/>
    <xsl:import href="/lib/xsl/custom/fblink-renderer.xsl"/>
   
   <xsl:output indent="yes"/>
  
</xsl:stylesheet>
