<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8"/>
	<xsl:template match="/">
		<CLCN_ITEM_CEDENTE_PF>
			<xsl:for-each select="/persons/person">
				<ED_CEDENTE_PF_NOME>
					<xsl:value-of select="name/first-name"/>
				</ED_CEDENTE_PF_NOME>
				<ED_CEDENTE_PF_SOBRENOME>
					<xsl:value-of select="name/last-name"/>
				</ED_CEDENTE_PF_SOBRENOME>
				<ED_CEDENTE_PF_TITULO>
					<xsl:value-of select="name/prefix"/>
				</ED_CEDENTE_PF_TITULO>
				<xsl:for-each select="address">
					<ED_CEDENTE_PF_ENDERECO>
					<xsl:value-of select="street"/>
					</ED_CEDENTE_PF_ENDERECO>
					<ED_CEDENTE_PF_CIDADE>
						<xsl:value-of select="city"/>
					</ED_CEDENTE_PF_CIDADE>
					<ED_CEDENTE_PF_CEP>
						<xsl:value-of select="postcode"/>
					</ED_CEDENTE_PF_CEP>
					<CCBB_CEDENTE_PF_PAIS>
						<xsl:value-of select="country"/>
					</CCBB_CEDENTE_PF_PAIS>
					<CCBB_CEDENTE_PF_ESTADO>
						<xsl:if test="(country='BR')">
							<xsl:value-of select="substring(region, 1, 2) "/>
						</xsl:if>
					</CCBB_CEDENTE_PF_ESTADO>
					<ED_CEDENTE_PF_ESTADO>
						<xsl:if test="not(country='BR')">
								<xsl:value-of select="district"/>
						</xsl:if>
						<xsl:if test="(country='BR')">
							<xsl:value-of select="''"/>
						</xsl:if>
					</ED_CEDENTE_PF_ESTADO>
				</xsl:for-each>
				<ED_CEDENTE_PF_FONE>
					<xsl:value-of select="phone"/>
				</ED_CEDENTE_PF_FONE>
				<ED_CEDENTE_PF_FAX>
					<xsl:value-of select="fax"/>
				</ED_CEDENTE_PF_FAX>
				<ED_CEDENTE_PF_EMAIL>
					<xsl:value-of select="email"/>
				</ED_CEDENTE_PF_EMAIL>
				<xsl:if test="/persons/controls">
					<ED_CEDENTE_PF_CPF>
						<xsl:value-of select="/persons/controls/CPF"/>
					</ED_CEDENTE_PF_CPF>
				</xsl:if>
			</xsl:for-each>
		</CLCN_ITEM_CEDENTE_PF>
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