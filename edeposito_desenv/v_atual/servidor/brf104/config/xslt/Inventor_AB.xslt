
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8"/>
	<xsl:template match="CLCN_ITEM_INVENTOR">
		<persons>
			<xsl:for-each select="/CLCN_ITEM_INVENTOR/">
				<person person-type="natural">
					<name>
						<first-name>
							<xsl:value-of select="PNL_INVENTOR_NOME/ED_INVENTOR_NOME"/>
						</first-name>
						<last-name>
							<xsl:value-of select="PNL_INVENTOR_NOME/ED_INVENTOR_SOBRENOME"/>
						</last-name>
						<prefix>
							<xsl:value-of select="PNL_INVENTOR_NOME/ED_INVENTOR_TITULO"/>
						</prefix>
						<phone>
							<xsl:value-of select="PNL_INVENTOR_CONTATO/ED_INVENTOR_FONE"/>
						</phone>
						<fax>
							<xsl:value-of select="PNL_INVENTOR_CONTATO/ED_INVENTOR_FAX"/>
						</fax>
						<email>
							<xsl:value-of select="PNL_INVENTOR_CONTATO/ED_INVENTOR_EMAIL"/>
						</email>
					</name>
					<address>
						<street>
							<xsl:value-of select="PNL_INVENTOR_ENDERECO/ED_INVENTOR_ENDERECO"/>
						</street>
						<city>
							<xsl:value-of select="PNL_INVENTOR_ENDERECO/ED_INVENTOR_CIDADE"/>
						</city>
						<postcode>
							<xsl:value-of select="PNL_INVENTOR_ENDERECO/ED_INVENTOR_CEP"/>
						</postcode>
						<country>
							<xsl:value-of select="PNL_INVENTOR_ENDERECO/CCBB_INVENTOR_PAIS"/>
						</country>
						<region>
							<xsl:if test="(PNL_INVENTOR_ENDERECO/CCBB_INVENTOR_PAIS='BR')">
								<xsl:value-of select="concat(PNL_INVENTOR_ENDERECO/CCBB_INVENTOR_ESTADO, ' ', PNL_INVENTOR_ENDERECO/CCBB_INVENTOR_ESTADO/@content)"/>
							</xsl:if>
						</region>
						<district>
							<xsl:if test="not(PNL_INVENTOR_ENDERECO/CCBB_INVENTOR_PAIS='BR')">
								<xsl:value-of select="PNL_INVENTOR_ENDERECO/ED_INVENTOR_ESTADO"/>
							</xsl:if>
							<xsl:if test="(PNL_INVENTOR_ENDERECO/CCBB_INVENTOR_PAIS='BR')">
								<xsl:value-of select="''"/>
							</xsl:if>
						</district>
					</address>
					<phone>
						<xsl:value-of select="PNL_INVENTOR_CONTATO/ED_INVENTOR_FONE"/>
					</phone>
					<fax>
						<xsl:value-of select="PNL_INVENTOR_CONTATO/ED_INVENTOR_FAX"/>
					</fax>
					<email>
						<xsl:value-of select="PNL_INVENTOR_CONTATO/ED_INVENTOR_EMAIL"/>
					</email>
					<controls>
						<CPF>
							<xsl:value-of select="PNL_INVENTOR_NOME/ED_INVENTOR_CPF"/>
						</CPF>
					</controls>
				</person>
			</xsl:for-each>
		</persons>
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