<?xml version="1.0" encoding="UTF-8"?>
<!-- 
* ***************************************************************************
pkgheader.xslt 2005  Sept
Based on data-pkgheader_map290705.xls 
 ****************************************************************************
Contacts:                                                      			       
D. Aggarwal		
***************************************************************************** 
revision history
260905 : file rename from data2Pkgheader.xslt to pkgheader.xslt
*****************************************************************************
Version 1.1  26 Sept 2005 
***************************************************************************** 
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-system="pkgheader-v1-4.dtd"/>
	<!-- reading outer most node of source-->
	<xsl:template match="BRF114">
		<pkgheader>
			<xsl:attribute name="lang">
				<xsl:value-of select="@language_of_proceedings"/>
			</xsl:attribute>
			<xsl:attribute name="dtd-version">
				<xsl:text>1.0</xsl:text>
			</xsl:attribute>
			<wad-message-digest/>
			<transmittal-info>
				<new-application>
					<to>
						<country>
							<xsl:text>BR</xsl:text>
						</country>
					</to>
				</new-application>
			</transmittal-info>
			<ip-type>
				<xsl:text>patent</xsl:text>
			</ip-type>
			<application-software>
				<software-name>
					<xsl:value-of select="@softwarename"/>
				</software-name>
				<software-version>
					<xsl:value-of select="@softwareversion"/>
				</software-version>
				<software-message>
					<xsl:value-of select="concat('formType=',@formtype,';formVersion=',@formversion)"/>
				</software-message>
			</application-software>
			<transmission-type>
				<xsl:value-of select="concat('submission',@formtype,' v.',@formversion)"/>
			</transmission-type>
		</pkgheader>
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
			<advancedProp name="iErrorHandling" value="fatal"/>
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