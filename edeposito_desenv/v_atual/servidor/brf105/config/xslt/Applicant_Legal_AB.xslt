
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8"/>
	<xsl:template match="CLCN_ITEM_DEP_PJ">
		<persons>
			<xsl:for-each select="/CLCN_ITEM_DEP_PJ">
				<person person-type="legal">
					<company>
						<xsl:value-of select="PNL_DEP_PJ_NOME/ED_DEP_PJ_EMPRESA"/>
					</company>
					<address>
						<street>
							<xsl:value-of select="PNL_DEP_PJ_ENDERECO/ED_DEP_PJ_ENDERECO"/>
						</street>
						<city>
							<xsl:value-of select="PNL_DEP_PJ_ENDERECO/ED_DEP_PJ_CIDADE"/>
						</city>
						<postcode>
							<xsl:value-of select="PNL_DEP_PJ_ENDERECO/ED_DEP_PJ_CEP"/>
						</postcode>
						<country>
							<xsl:value-of select="PNL_DEP_PJ_ENDERECO/CCBB_DEP_PJ_PAIS"/>
						</country>
						<region>
							<xsl:if test="(PNL_DEP_PJ_ENDERECO/CCBB_DEP_PJ_PAIS='BR')">
								<xsl:value-of select="concat(PNL_DEP_PJ_ENDERECO/CCBB_DEP_PJ_ESTADO, ' ', PNL_DEP_PJ_ENDERECO/CCBB_DEP_PJ_ESTADO/@content)"/>
							</xsl:if>
						</region>
						<district>	
							<xsl:if test="not(PNL_DEP_PJ_ENDERECO/CCBB_DEP_PJ_PAIS='BR')">
								<xsl:value-of select="PNL_DEP_PJ_ENDERECO/ED_DEP_PJ_ESTADO"/>
							</xsl:if>
							<xsl:if test="(PNL_DEP_PJ_ENDERECO/CCBB_DEP_PJ_PAIS='BR')">
								<xsl:value-of select="''"/>
							</xsl:if>
						</district>
					</address>
					<phone>
						<xsl:value-of select="PNL_DEP_PJ_CONTATO/ED_DEP_PJ_FONE"/>
					</phone>
					<fax>
						<xsl:value-of select="PNL_DEP_PJ_CONTATO/ED_DEP_PJ_FAX"/>
					</fax>
					<email>
						<xsl:value-of select="PNL_DEP_PJ_CONTATO/ED_DEP_PJ_EMAIL"/>
					</email>
					<controls>
						<CNPJ>
							<xsl:value-of select="PNL_DEP_PJ_NOME/ED_DEP_PJ_CNPJ"/>
						</CNPJ>
					</controls>
				</person>
			</xsl:for-each>
		</persons>
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