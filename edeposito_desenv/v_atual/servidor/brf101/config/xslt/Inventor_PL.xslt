<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<CLCN_ITEM_INVENTOR>
			<xsl:for-each select="/persons/person">
				<ED_INVENTOR_SOBRENOME>
					<xsl:value-of select="name/last-name"/>
				</ED_INVENTOR_SOBRENOME>
				<ED_INVENTOR_NOME>
					<xsl:value-of select="name/first-name"/>
				</ED_INVENTOR_NOME>
				<ED_INVENTOR_TITULO>
					<xsl:value-of select="name/prefix"/>
				</ED_INVENTOR_TITULO>
				<xsl:for-each select="address">
					<ED_INVENTOR_ENDERECO>
						<xsl:value-of select="street"/>
					</ED_INVENTOR_ENDERECO>

					<ED_INVENTOR_CIDADE>
						<xsl:value-of select="city"/>
					</ED_INVENTOR_CIDADE>

					<ED_INVENTOR_CEP>
						<xsl:value-of select="postcode"/>
					</ED_INVENTOR_CEP>

					<CCBB_INVENTOR_PAIS>
						<xsl:value-of select="country"/>
					</CCBB_INVENTOR_PAIS>
					<CCBB_INVENTOR_ESTADO>
						<xsl:if test="(country='BR')">
							<xsl:value-of select="substring(region, 1, 2) "/>
						</xsl:if>
					</CCBB_INVENTOR_ESTADO>
					<ED_INVENTOR_ESTADO>
						<xsl:if test="not(country='BR')">
								<xsl:value-of select="district"/>
						</xsl:if>
						<xsl:if test="(country='BR')">
							<xsl:value-of select="''"/>
						</xsl:if>
					</ED_INVENTOR_ESTADO>
				</xsl:for-each>
				<ED_INVENTOR_FONE>
					<xsl:value-of select="phone"/>
				</ED_INVENTOR_FONE>
				<ED_INVENTOR_FAX>
					<xsl:value-of select="fax"/>
				</ED_INVENTOR_FAX>
				<ED_INVENTOR_EMAIL>
					<xsl:value-of select="email"/>
				</ED_INVENTOR_EMAIL>
				<xsl:if test="/persons/controls">
					<ED_INVENTOR_CPF>
						<xsl:value-of select="/persons/controls/CPF"/>
					</ED_INVENTOR_CPF>
				</xsl:if>
			</xsl:for-each>
		</CLCN_ITEM_INVENTOR>
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