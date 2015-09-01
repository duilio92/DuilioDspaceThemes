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
    
    <xsl:import href="../dri2xhtml.xsl"/>
		<xsl:import href="/lib/xsl/core/page-structure.xsl"/>
		<xsl:import href="/lib/xsl/custom/footer.xsl"/>
    <xsl:output indent="yes"/>
    
    
    <!-- An example of an existing template copied from structural.xsl and overridden -->  
    <xsl:template name="buildFooter">
        <div id="ds-footer">
        	<!-- Agrego enlaces de prohuerta-->
						<div class="dircn">
        			<span class="phbottom">Pro-Huerta | Coordinación Nacional | Chile 460 1° Piso | 1098 Ciudad de Buenos Aires | Telefax: 0114339-0564/3 | prohuerta.nacional@inta.gob.ar</span>
						</div>

	<!-- comienzo pie de página categorias-->
	<div class="piecat">
		<ul>
			<label>Actualidad</label>
			<li><a href="http://prohuerta.inta.gov.ar/calendario-4/">Agenda</a></li>
		</ul>
		
		<ul>
			<label>Contacto</label>
			<li><a href="http://prohuerta.inta.gov.ar/coordinaciones-provinciales/">Coordinaciones Provinciales</a></li>
		</ul>
		
		<ul>
			<label>Actividad</label>
			<li><a href="http://prohuerta.inta.gov.ar/actividad-2/componente-huerta-granja-y-frutales/">Componente huerta, granja y frutales</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/actividad-2/educacion/">Educación</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/actividad-2/economia-social/">Economía social</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/actividad-2/personas-en-conflicto-con-la-ley-penal/" title="Personas en conflicto con la ley penal">Personas en conflicto con la ley penal</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/actividad-2/comunicacion/">Comunicación</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/actividad-2/proyectos-especiales/">Proyectos especiales</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/actividad-2/pnter3/">PNTER3</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/actividad-2/cooperacion-internacional/">Cooperación Internacional</a></li>
		</ul>
		
		<ul>
			<label>Institucional</label>
			<li><a href="http://prohuerta.inta.gov.ar/institucional/quienes-somos/">Quiénes somos</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/institucional/plan-operativo-anual/">Plan Operativo Anual</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/institucional/seguridad-y-soberania-alimentaria/">Seguridad alimentaria</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/institucional/como-participar/">Cómo participar</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/coordinaciones-provinciales/coordinacion-nacional/">Coordinación nacional</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/coordinaciones-provinciales/">Coordinaciones provinciales</a></li>
		</ul>
		
		<ul>
			<label>Información</label>
			<li><a href="http://prohuerta.inta.gov.ar/informacion/banco-de-datos-2/">Banco de datos</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/informacion/banco-de-fotos/">Banco de fotos</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/informacion/pro-huerta-tv/">Prohuerta TV</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/informacion/pro-huerta-radio/">Prohuerta radio</a></li>
            <li><a href="http://prohuerta.inta.gov.ar/informacion/biblioteca-digital/">Biblioteca digital</a></li>
		</ul>
	</div>
	<!-- final pie de página categorias-->
	<!-- contacto local de dspace-->
  <!--<div id="ds-footer-links">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                        <xsl:text>/contacto</xsl:text>
                    </xsl:attribute>
                    <i18n:text>xmlui.dri2xhtml.structural.contact-link</i18n:text>
                </a>
                <xsl:text> | </xsl:text>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                        <xsl:text>/feedback</xsl:text>
                    </xsl:attribute>
                    <i18n:text>xmlui.dri2xhtml.structural.feedback-link</i18n:text>
                </a>
            </div>-->
            <!--Invisible link to HTML sitemap (for search engines) -->
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                    <xsl:text>/htmlmap</xsl:text>
                </xsl:attribute>
            </a>
	<!-- creditos-->
	<div class="creditos">
		Algunos íconos por 
		<a target="_blank" href="http://gnome-look.org/content/show.php/Faenza?content=128143" title="Faenza Gnome Icon Theme" class="external">Faenza Gnome Icon Theme</a>, 
		<a target="_blank" href="http://tango.freedesktop.org/Tango_Desktop_Project" title="Tango Desktop Project" class="external">Tango Desktop Project</a>, 
		<a target="_blank" href="http://www.gnome.org" title="Gnome Icon Theme" class="external">Gnome Icon Theme</a> y 
		<a target="_blank" href="http://twitter.github.com/bootstrap/index.html" title="Bootstrap" class="external">Bootstrap</a>.
		<br/>
		Hecho con <a target="_blank" href="http://www.dspace.org/" title="Greenstone" class="external">DSpace</a>.
	</div>
	<!-- final creditos-->
	
</div>    
    </xsl:template>

    
</xsl:stylesheet>
