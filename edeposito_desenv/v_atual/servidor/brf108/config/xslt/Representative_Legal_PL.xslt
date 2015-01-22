<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8"/>
	<xsl:template match="/">
		<CLCN_ITEM_PROCURADOR_PJ>
			<xsl:for-each select="/persons/person">
				<ED_PROC_PJ_EMPRESA>
					<xsl:value-of select="company"/>
				</ED_PROC_PJ_EMPRESA>
				<xsl:for-each select="address">
					<ED_PROC_PJ_ENDERECO>
						<xsl:value-of select="street"/>
					</ED_PROC_PJ_ENDERECO>
					<ED_PROC_PJ_CIDADE>
						<xsl:value-of select="city"/>
					</ED_PROC_PJ_CIDADE>
					<ED_PROC_PJ_CEP>
						<xsl:value-of select="postcode"/>
					</ED_PROC_PJ_CEP>
					<CCBB_PROC_PJ_PAIS>
						<xsl:value-of select="'BR'"/>
					</CCBB_PROC_PJ_PAIS>
					<CCBB_PROC_PJ_ESTADO>
						<xsl:if test="not(country='BR') ">
								<xsl:value-of select="''"/>
						</xsl:if>
						<xsl:if test="(country='BR')">
							<xsl:value-of select="substring(region, 1, 2) "/>
						</xsl:if>
					</CCBB_PROC_PJ_ESTADO>
				</xsl:for-each>
				<ED_PROC_PJ_FONE>
					<xsl:value-of select="phone"/>
				</ED_PROC_PJ_FONE>
				<ED_PROC_PJ_FAX>
					<xsl:value-of select="fax"/>
				</ED_PROC_PJ_FAX>
				<ED_PROC_PJ_EMAIL>
					<xsl:value-of select="email"/>
				</ED_PROC_PJ_EMAIL>
				<xsl:if test="/persons/controls">
					<ED_PROC_PJ_CNPJ>
						<xsl:value-of select="/persons/controls/CNPJ"/>
					</ED_PROC_PJ_CNPJ>
				</xsl:if>
			</xsl:for-each>
		</CLCN_ITEM_PROCURADOR_PJ>
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios/>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
		<MapperBlockPosition></MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->