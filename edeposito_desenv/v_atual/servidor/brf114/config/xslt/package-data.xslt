<?xml version="1.0" encoding="UTF-8"?>
<!-- 
* ***************************************************************************
package-data.xslt 2005  Sept
Based on data-packge-data.xls 
 ****************************************************************************
Contacts:                                                      			       
D. Aggarwal		
***************************************************************************** 
revision history
260905 : file name renamed from data2package-data.xslt to package-data.xslt
*****************************************************************************
Version 1.1  26 Sept 2005 
***************************************************************************** 
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-system="package-data-v1-5.dtd"/>
	<!-- read outer most node from source tree-->
	<xsl:template match="BRF114">
		<package-data>
			<xsl:attribute name="lang">
				<xsl:value-of select="./@language_of_proceedings"/>
			</xsl:attribute>
			<xsl:attribute name="dtd-version">
				<xsl:text>1.5</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="produced-by">
				<xsl:text>applicant</xsl:text>
			</xsl:attribute>
			<transmittal-info>
				<new-application>
					<to>
						<country>
							<xsl:text>BR</xsl:text>
						</country>
					</to>
				</new-application>
			</transmittal-info>
			<signatories>
				<signatory>
					<name/>
					<electronic-signature date="">
						<basic-signature>
							<text-string/>
						</basic-signature>
					</electronic-signature>
				</signatory>
			</signatories>
			<application-request>
				<xsl:attribute name="file">
					<xsl:text>brf114-request.xml</xsl:text>
				</xsl:attribute>
			</application-request>
			<application-body-doc>
				<xsl:attribute name="file">
					<xsl:text>application-body.xml</xsl:text>
				</xsl:attribute>
			</application-body-doc>
			<other-documents>
				<other-doc>
					<xsl:attribute name="file">
						<xsl:text>application-body.xml</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="file-type">
						<xsl:text>xml</xsl:text>
					</xsl:attribute>
					<document-name>
						<xsl:text>APPBODYXML</xsl:text>
					</document-name>
					<dtext/>
				</other-doc>
				
				<other-doc>
					<xsl:attribute name="file">
						<xsl:text>brf114-request.xml</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="file-type">
						<xsl:text>xml</xsl:text>
					</xsl:attribute>
					<document-name>
						<xsl:text>F1.14XML</xsl:text>
					</document-name>
					<dtext/>
				</other-doc>
				<other-doc>
					<xsl:attribute name="file">
						<xsl:text>brf114-request.pdf</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="file-type">
						<xsl:text>pdf</xsl:text>
					</xsl:attribute>
					<document-name>
						<xsl:text>F1.14</xsl:text>
					</document-name>
					<dtext/>
				</other-doc>
				<!--
				<other-doc>
					<xsl:attribute name="file">
						<xsl:text>CODCONTGRU.xml</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="file-type">
						<xsl:text>xml</xsl:text>
					</xsl:attribute>
					<document-name>
						<xsl:text>CODCONTGRU</xsl:text>
					</document-name>
					<dtext/>
				</other-doc>
				<other-doc>
					<xsl:attribute name="file">
						<xsl:text>CCSEQBIOXML.xml</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="file-type">
						<xsl:text>cod</xsl:text>
					</xsl:attribute>
					<document-name>
						<xsl:text>CCSEQBIOXML</xsl:text>
					</document-name>
					<dtext/>
				</other-doc>
				-->
				<xsl:apply-templates select="//document"/>
			</other-documents>
		</package-data>
	</xsl:template>
	<!-- create other-doc tree -->
	<xsl:template match="document">
		<other-doc>
			<xsl:attribute name="file">
				<xsl:value-of select="@filename"/>
			</xsl:attribute>
			<xsl:attribute name="file-type">
				<xsl:value-of select="@filetype"/>
			</xsl:attribute>
			<document-name>
				<xsl:choose>
					<xsl:when test="./@documentcode='INDEX-BR'">
						<xsl:value-of select="../PNL_ITEM_DOCS_GERAIS/ED_AUX_COD_SEC"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="./@documentcode"/>
					</xsl:otherwise>
				</xsl:choose>				
			</document-name>
			<dtext>
				<xsl:choose>
					<xsl:when test="./@documentcode='RESUMOMODIF'">
						<xsl:value-of select="../CLCN_ITEM_RESUMO/ED_FIGURA_RESUMO"/>
					</xsl:when>
					<xsl:when test="./@documentcode='DESENHOSMOD'">
						<xsl:value-of select="../CLCN_ITEM_DESENHO/ED_DESENHO_NUM_DESENHOS"/>
					</xsl:when>
					<xsl:when test="./@documentcode='OUTROS'">
						<xsl:value-of select="../PNL_ITEM_OUTRO_DOC/MEM_OUTRO_DOC_DETALHE"/>
					</xsl:when>
				</xsl:choose>
			</dtext>
		</other-doc>
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