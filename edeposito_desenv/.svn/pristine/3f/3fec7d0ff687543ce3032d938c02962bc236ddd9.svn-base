<?xml version="1.0" encoding="UTF-8"?>
<!-- 
****************************************************************************
application-body.xslt 2005  Sept
****************************************************************************

***************************************************************************** 
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-system="application-body-v1-5.dtd"/>
	<!-- creating from th outer most node of tree-->
	<xsl:template match="BRF113">
		<application-body>
			<xsl:attribute name="lang">
				<xsl:value-of select="./@language_of_proceedings"/>
			</xsl:attribute>
			<xsl:attribute name="dtd-version">1.1</xsl:attribute>
			<xsl:attribute name="country">BR</xsl:attribute>
			<!--<xsl:choose>-->
			<!--<xsl:when test="./Pages/check_list/pcDocuments/tsSpecification/CLCN_ESPECIFICACAO/doc_clcn_SpecificationDocs_entity/text()">-->
			<!--<xsl:when test="./Pages/check_list/pcDocuments/tsSpecification/doc_clcn_Specification='true'">-->
			<description>
				<xsl:choose>
					<xsl:when test="./PAGINAS/PG_DOCUMENTO/PC_DOCUMENTO/TS_ESPECIFICACAO/CLCN_ESPECIFICACAO/PNL_ESPECIFICACAO_entity/document/@documentcode='RELDESCMODIF'">
						<xsl:apply-templates select="./PAGINAS/PG_DOCUMENTO/PC_DOCUMENTO/TS_ESPECIFICACAO/CLCN_ESPECIFICACAO/PNL_ESPECIFICACAO_entity/document[@documentcode='RELDESCMODIF']"/>
					</xsl:when>
					<xsl:otherwise>
						<doc-page he="1" wi="1" type="pdf" file="">
						</doc-page>
					</xsl:otherwise>
				</xsl:choose>
			</description>
			<claims>
				<xsl:choose>
					<xsl:when test="./PAGINAS/PG_DOCUMENTO/PC_DOCUMENTO/TS_ESPECIFICACAO/CLCN_ESPECIFICACAO/PNL_ESPECIFICACAO_entity/document/@documentcode='REIVINDMODIF'">
						<xsl:apply-templates select="./PAGINAS/PG_DOCUMENTO/PC_DOCUMENTO/TS_ESPECIFICACAO/CLCN_ESPECIFICACAO/PNL_ESPECIFICACAO_entity/document[@documentcode='REIVINDMODIF']"/>
					</xsl:when>
					<xsl:otherwise>
						<doc-page he="1" wi="1" type="pdf" file="">
						</doc-page>
					</xsl:otherwise>
				</xsl:choose>
			</claims>
			<xsl:apply-templates select="./PAGINAS/PG_DOCUMENTO/PC_DOCUMENTO/TS_ESPECIFICACAO/CLCN_ESPECIFICACAO/PNL_ESPECIFICACAO_entity/document[@documentcode='RESUMOMODIF']"/>
			<xsl:apply-templates select="./PAGINAS/PG_DOCUMENTO/PC_DOCUMENTO/TS_ESPECIFICACAO/CLCN_ESPECIFICACAO/PNL_ESPECIFICACAO_entity/document[@documentcode='DESENHOSMOD']"/>
			<!--</xsl:when>-->
			<!--</xsl:choose>-->
		</application-body>
	</xsl:template>
	<!--creating doc-page tree  -->
	<xsl:template match="document">
		<xsl:choose>
			<xsl:when test="./@documentcode ='RELDESCMODIF'">
				<doc-page>
					<xsl:attribute name="id">
						<xsl:value-of select="@documentcode"/>
					</xsl:attribute>
					<xsl:attribute name="he">1</xsl:attribute>
					<xsl:attribute name="wi">1</xsl:attribute>
					<xsl:attribute name="file">
						<xsl:value-of select="@filename"/>
					</xsl:attribute>
					<xsl:attribute name="type">
						<xsl:value-of select="@filetype"/>
					</xsl:attribute>
					<xsl:attribute name="ppf">
						<xsl:value-of select="@frompage"/>
					</xsl:attribute>
					<xsl:attribute name="ppl">
						<xsl:value-of select="@topage"/>
					</xsl:attribute>
					<xsl:attribute name="pp">
						<xsl:choose>
							<xsl:when test="@topage!=''">
								<xsl:choose>
									<xsl:when test="@frompage!=''">
										<xsl:value-of select="@topage - @frompage + 1"/>
									</xsl:when>
								</xsl:choose>
							</xsl:when>
						</xsl:choose>
					</xsl:attribute>
				</doc-page>
			</xsl:when>
			<xsl:when test="./@documentcode ='REIVINDMODIF'">
				<doc-page>
					<xsl:attribute name="id">
						<xsl:value-of select="@documentcode"/>
					</xsl:attribute>
					<xsl:attribute name="he">1</xsl:attribute>
					<xsl:attribute name="wi">1</xsl:attribute>
					<xsl:attribute name="file">
						<xsl:value-of select="@filename"/>
					</xsl:attribute>
					<xsl:attribute name="type">
						<xsl:value-of select="@filetype"/>
					</xsl:attribute>
					<xsl:attribute name="ppf">
						<xsl:value-of select="@frompage"/>
					</xsl:attribute>
					<xsl:attribute name="ppl">
						<xsl:value-of select="@topage"/>
					</xsl:attribute>
					<xsl:attribute name="pp">
						<xsl:choose>
							<xsl:when test="@topage!=''">
								<xsl:choose>
									<xsl:when test="@frompage!=''">
										<xsl:value-of select="@topage - @frompage + 1"/>
									</xsl:when>
								</xsl:choose>
							</xsl:when>
						</xsl:choose>
					</xsl:attribute>
				</doc-page>
			</xsl:when>
			<xsl:when test="./@documentcode ='RESUMOMODIF'">
				<abstract>
					<doc-page>
						<xsl:attribute name="id">
							<xsl:value-of select="@documentcode"/>
						</xsl:attribute>
						<xsl:attribute name="he">1</xsl:attribute>
						<xsl:attribute name="wi">1</xsl:attribute>
						<xsl:attribute name="file">
							<xsl:value-of select="@filename"/>
						</xsl:attribute>
						<xsl:attribute name="type">
							<xsl:value-of select="@filetype"/>
						</xsl:attribute>
						<xsl:attribute name="ppf">
							<xsl:value-of select="@frompage"/>
						</xsl:attribute>
						<xsl:attribute name="ppl">
							<xsl:value-of select="@topage"/>
						</xsl:attribute>
						<xsl:attribute name="pp">
							<xsl:choose>
								<xsl:when test="@topage!=''">
									<xsl:choose>
										<xsl:when test="@frompage!=''">
											<xsl:value-of select="@topage - @frompage + 1"/>
										</xsl:when>
									</xsl:choose>
								</xsl:when>
							</xsl:choose>
						</xsl:attribute>
					</doc-page>
				</abstract>
			</xsl:when>
			<xsl:when test="./@documentcode ='DESENHOSMOD'">
				<drawings>
					<doc-page>
						<xsl:attribute name="id">
							<xsl:value-of select="@documentcode"/>
						</xsl:attribute>
						<xsl:attribute name="he">1</xsl:attribute>
						<xsl:attribute name="wi">1</xsl:attribute>
						<xsl:attribute name="file">
							<xsl:value-of select="@filename"/>
						</xsl:attribute>
						<xsl:attribute name="type">
							<xsl:value-of select="@filetype"/>
						</xsl:attribute>
						<xsl:attribute name="ppf">
							<xsl:value-of select="@frompage"/>
						</xsl:attribute>
						<xsl:attribute name="ppl">
							<xsl:value-of select="@topage"/>
						</xsl:attribute>
						<xsl:attribute name="pp">
							<xsl:choose>
								<xsl:when test="@topage!=''">
									<xsl:choose>
										<xsl:when test="@frompage!=''">
											<xsl:value-of select="@topage - @frompage + 1"/>
										</xsl:when>
									</xsl:choose>
								</xsl:when>
							</xsl:choose>
						</xsl:attribute>
					</doc-page>
				</drawings>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="..\..\data\temp\000338786B41B\data.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="no" profilemode="0" profiledepth="" profilelength=""
		          urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal"
		          customvalidator="">
			<advancedProp name="sInitialMode" value=""/>
			<advancedProp name="bXsltOneIsOkay" value="true"/>
			<advancedProp name="bSchemaAware" value="false"/>
			<advancedProp name="bXml11" value="false"/>
			<advancedProp name="iValidation" value="0"/>
			<advancedProp name="bExtensions" value="true"/>
			<advancedProp name="iWhitespace" value="0"/>
			<advancedProp name="sInitialTemplate" value=""/>
			<advancedProp name="bTinyTree" value="true"/>
			<advancedProp name="bWarnings" value="true"/>
			<advancedProp name="bUseDTD" value="false"/>
			<advancedProp name="iErrorHandling" value="0"/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
		<MapperBlockPosition></MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->