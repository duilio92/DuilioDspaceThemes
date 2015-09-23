
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



 <!-- The header (distinct from the HTML head element) contains the title, subtitle, login box and various
        placeholders for header images -->


<xsl:template name="buildHeader">
        <div id="ds-header">
           <!-- quito el contenido del header por defecto en dspace 
						<a>
                <xsl:attribute name="href">
                    <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                    <xsl:text>/</xsl:text>
                </xsl:attribute>
                <span id="ds-header-logo">&#160;</span>
            </a>
            <h1 class="pagetitle">
                <xsl:choose>
                
                        <xsl:when test="not(/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='title'])">
                                <xsl:text> </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                                <xsl:copy-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='title']/node()"/>
                        </xsl:otherwise>
                </xsl:choose>

            </h1>
            <h2 class="static-pagetitle"><i18n:text>xmlui.dri2xhtml.structural.head-subtitle</i18n:text></h2>

						-->

<a href="http://prohuerta.inta.gov.ar/"><img width="1000" height="288" src="http://prohuerta.inta.gov.ar/wp-content/uploads/2014/07/imagen3_mini-1170x534.jpg" alt=""/></a>

<nav id="access" role="navigation">
<div class="menu">
	<ul>
		<li><!-- CORREGIR LOS ENLACES PARA QUE SEAN LOCALES-->
			<a>  
					<xsl:attribute name="href">
           <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
					</xsl:attribute>
			Inicio</a>
		</li>
		<li>
			<a>
				<xsl:attribute name="href"><!--DIRECCION BASE DE DSPACE + el handle para el ejemplo(HARDCODEADO)-->
           <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>/handle/123456789/4
				</xsl:attribute>
				Libros y Cartillas</a>
		</li>
		<li>
			<a>
				<xsl:attribute name="href"><!--DIRECCION BASE DE DSPACE + el handle para el ejemplo(HARDCODEADO)-->
           <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>/handle/123456789/3
				</xsl:attribute>			
			Videos</a>
		</li>
		<li>
			<a>
				<xsl:attribute name="href"><!--DIRECCION BASE DE DSPACE + el handle para el ejemplo(HARDCODEADO)-->
           <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>/handle/123456789/5
				</xsl:attribute>			
			Audio</a>
		</li>
		<li>
			<a>
				<xsl:attribute name="href"><!--DIRECCION BASE DE DSPACE + el handle para el ejemplo(HARDCODEADO)-->
           <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>/handle/123456789/6
				</xsl:attribute>			
			Multimedia</a>
		</li>
		<li>
			<a>
				<xsl:attribute name="href"><!--DIRECCION BASE DE DSPACE + el handle para el ejemplo(HARDCODEADO)-->
           <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>/handle/123456789/7
				</xsl:attribute>			
			Boletines</a>
		</li>
		<li>
				<a>
				<xsl:attribute name="href"><!--DIRECCION BASE DE DSPACE + el handle para el ejemplo(HARDCODEADO)-->
           <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>/handle/123456789/8
				</xsl:attribute>			
			JICA</a>
		</li>
		<li>
			<a>
				<xsl:attribute name="href"><!--DIRECCION BASE DE DSPACE + el handle para el ejemplo(HARDCODEADO)-->
           <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>/handle/123456789/9
				</xsl:attribute>			
			Red Latinoamericana</a>
		</li>
	</ul>
</div>
</nav>






						<!--Por ahora dejo el login -->
            <xsl:choose>
                <xsl:when test="/dri:document/dri:meta/dri:userMeta/@authenticated = 'yes'">
                    <div id="ds-user-box">
                        <p>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                        dri:metadata[@element='identifier' and @qualifier='url']"/>
                                </xsl:attribute>
                                <i18n:text>xmlui.dri2xhtml.structural.profile</i18n:text>
                                <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                    dri:metadata[@element='identifier' and @qualifier='firstName']"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                    dri:metadata[@element='identifier' and @qualifier='lastName']"/>
                            </a>
                            <xsl:text> | </xsl:text>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                        dri:metadata[@element='identifier' and @qualifier='logoutURL']"/>
                                </xsl:attribute>
                                <i18n:text>xmlui.dri2xhtml.structural.logout</i18n:text>
                            </a>
                        </p>
                    </div>
                </xsl:when>
                <xsl:otherwise>
                    <div id="ds-user-box">
                        <p>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                        dri:metadata[@element='identifier' and @qualifier='loginURL']"/>
                                </xsl:attribute>
                                <i18n:text>xmlui.dri2xhtml.structural.login</i18n:text>
                            </a>
                        </p>
                    </div>
                </xsl:otherwise>
            </xsl:choose>

        </div>
    </xsl:template>
</xsl:stylesheet>
