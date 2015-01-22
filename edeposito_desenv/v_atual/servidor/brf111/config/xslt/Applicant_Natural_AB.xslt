
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8"/>
	<xsl:template match="CLCN_ITEM_DEP_PF">
		<persons>
			<xsl:for-each select="/CLCN_ITEM_DEP_PF">
				<person person-type="natural">
					<name>
						<first-name>
							<xsl:value-of select="PNL_DEP_PF_NOME/ED_DEP_PF_NOME"/>
						</first-name>
						<last-name>
							<xsl:value-of select="PNL_DEP_PF_NOME/ED_DEP_PF_SOBRENOME"/>
						</last-name>
						<prefix>
							<xsl:value-of select="PNL_DEP_PF_NOME/ED_DEP_PF_TITULO"/>
						</prefix>
					</name>
					<address>
						<street>
							<xsl:value-of select="PNL_DEP_PF_ENDERECO/ED_DEP_PF_ENDERECO"/>
						</street>
						<city>
							<xsl:value-of select="PNL_DEP_PF_ENDERECO/ED_DEP_PF_CIDADE"/>
						</city>
						<postcode>
							<xsl:value-of select="PNL_DEP_PF_ENDERECO/ED_DEP_PF_CEP"/>
						</postcode>
						<country>
							<xsl:value-of select="PNL_DEP_PF_ENDERECO/CCBB_DEP_PF_PAIS"/>
						</country>
						<region>
							<xsl:if test="(PNL_DEP_PF_ENDERECO/CCBB_DEP_PF_PAIS='BR')">
								<xsl:value-of select="concat(PNL_DEP_PF_ENDERECO/CCBB_DEP_PF_ESTADO, ' ', PNL_DEP_PF_ENDERECO/CCBB_DEP_PF_ESTADO/@content)"/>
							</xsl:if>
						</region>
						<district>
							<xsl:if test="not(PNL_DEP_PF_ENDERECO/CCBB_DEP_PF_PAIS='BR')">
								<xsl:value-of select="PNL_DEP_PF_ENDERECO/ED_DEP_PF_ESTADO"/>
							</xsl:if>
							<xsl:if test="(PNL_DEP_PF_ENDERECO/CCBB_DEP_PF_PAIS='BR')">
								<xsl:value-of select="''"/>
							</xsl:if>
						</district>
					</address>
					<phone>
						<xsl:value-of select="PNL_DEP_PF_CONTATO/ED_DEP_PF_FONE"/>
					</phone>
					<fax>
						<xsl:value-of select="PNL_DEP_PF_CONTATO/ED_DEP_PF_FAX"/>
					</fax>
					<email>
						<xsl:value-of select="PNL_DEP_PF_CONTATO/ED_DEP_PF_EMAIL"/>
					</email>
					<controls>
						<CPF>
							<xsl:value-of select="PNL_DEP_PF_NOME/ED_DEP_PF_CPF"/>
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