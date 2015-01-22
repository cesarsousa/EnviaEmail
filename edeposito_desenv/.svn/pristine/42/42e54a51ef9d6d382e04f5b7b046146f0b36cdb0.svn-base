<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8"/>
	<xsl:template match="/">
		<CLCN_ITEM_DEP_PF>
			<xsl:for-each select="/persons/person">
				<ED_DEP_PF_NOME>
					<xsl:value-of select="name/first-name"/>
				</ED_DEP_PF_NOME>
				<ED_DEP_PF_SOBRENOME>
					<xsl:value-of select="name/last-name"/>
				</ED_DEP_PF_SOBRENOME>
				<ED_DEP_PF_TITULO>
					<xsl:value-of select="name/prefix"/>
				</ED_DEP_PF_TITULO>
				<xsl:for-each select="address">
					<ED_DEP_PF_ENDERECO>
					<xsl:value-of select="street"/>
					</ED_DEP_PF_ENDERECO>
					<ED_DEP_PF_CIDADE>
						<xsl:value-of select="city"/>
					</ED_DEP_PF_CIDADE>
					<ED_DEP_PF_CEP>
						<xsl:value-of select="postcode"/>
					</ED_DEP_PF_CEP>
					<CCBB_DEP_PF_PAIS>
						<xsl:value-of select="country"/>
					</CCBB_DEP_PF_PAIS>
					<CCBB_DEP_PF_ESTADO>
						<xsl:if test="(country='BR')">
							<xsl:value-of select="substring(region, 1, 2)"/>
						</xsl:if>
					</CCBB_DEP_PF_ESTADO>
					<ED_DEP_PF_ESTADO>
						<xsl:if test="not(country='BR')">
								<xsl:value-of select="district"/>
						</xsl:if>
						<xsl:if test="(country='BR')">
							<xsl:value-of select="''"/>
						</xsl:if>
					</ED_DEP_PF_ESTADO>
				</xsl:for-each>
				<ED_DEP_PF_FONE>
					<xsl:value-of select="phone"/>
				</ED_DEP_PF_FONE>
				<ED_DEP_PF_FAX>
					<xsl:value-of select="fax"/>
				</ED_DEP_PF_FAX>
				<ED_DEP_PF_EMAIL>
					<xsl:value-of select="email"/>
				</ED_DEP_PF_EMAIL>
				<xsl:if test="/persons/controls">
					<ED_DEP_PF_CPF>
						<xsl:value-of select="/persons/controls/CPF"/>
					</ED_DEP_PF_CPF>
				</xsl:if>
			</xsl:for-each>
		</CLCN_ITEM_DEP_PF>
	</xsl:template>
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

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