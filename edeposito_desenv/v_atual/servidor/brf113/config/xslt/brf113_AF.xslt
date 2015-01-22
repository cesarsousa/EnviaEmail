<?xml version="1.0" encoding="UTF-8"?>
<!-- 
*****************************************************************************
brf113_AF.xslt
***************************************************************************** 
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- Start tree creation here -->

	<xsl:variable name="language" select="/BRF113/@language_of_proceedings"/>
	<xsl:template match="BRF113">
		<internal>
			<xml-documents>
				<doc infile="data.xml" xslfile="brf113-request.xslt" outfile="brf113-request.xml" signatory="false"/>
				<doc infile="data.xml" xslfile="package-data.xslt" outfile="package-data.xml" signatory="true"/>
				<doc infile="data.xml" xslfile="pkgheader.xslt" outfile="pkgheader.xml" signatory="false"/>
				<doc infile="data.xml" xslfile="application-body.xslt" outfile="application-body.xml" signatory="false"/>				
			</xml-documents>
			<pdf-documents>
				<doc infile="brf113-request.xml" outfile="brf113-request.pdf" signatory="true" id="0">
					<xsl:variable name="switch_lang_request_xfo">
						<xsl:call-template name="SwitchXFOfileName">
							<xsl:with-param name="FileName" select="'brf113-request.xfo'"/>
						</xsl:call-template>
					</xsl:variable>
					<xsl:attribute name="xslfile">
						<xsl:value-of select="$switch_lang_request_xfo"/>
					</xsl:attribute>
				</doc>
				
			</pdf-documents>
			<!-- call template parties-->
			<xsl:apply-templates select="./PAGINAS/PG_NOME"/>
			<additional-info>
				<invention-title>
					<xsl:value-of select="normalize-space(./PAGINAS/PG_PEDIDO/TPN_PEDIDO/ED_TITULO_INVENCAO)"/>
				</invention-title>
				<!--priority-info-->
				<xsl:apply-templates select="PAGINAS/PG_PRIORIDADE_GERAL"/>
				<!--biology-info-->
				<xsl:apply-templates select="PAGINAS/PG_MATERIAL_BIOLOGICO"/>
				<!--documents-info-->
				<xsl:apply-templates select="./PAGINAS/PG_DOCUMENTO/PC_DOCUMENTO/TS_ESPECIFICACAO/CLCN_ESPECIFICACAO"/>
				<internal-notes-info>
					<xsl:for-each select="Notes/note">
						<internal-note subject="{@subject}" author="{@author}" text="{@notetext}" date="{@notedate}"/>
					</xsl:for-each>
			    </internal-notes-info>
			</additional-info>
		</internal>
	</xsl:template>
	<!--Create parties -->
	<xsl:template match="PG_NOME">
		<signatories>
			<xsl:apply-templates select="./CLCN_NOME"/>
		</signatories>
	</xsl:template>
	<!--Create document-info -->
	<xsl:template match="CLCN_ESPECIFICACAO">
		<documents-info>
			<xsl:apply-templates select="./PNL_ESPECIFICACAO_entity"/>
			<xsl:apply-templates select="./PNL_ESPECIFICACAO_entity/document[@documentcode='RELDESCMODIF']"/>
			<xsl:apply-templates select="./PNL_ESPECIFICACAO_entity/document[@documentcode='REIVINDMODIF']"/>
			<xsl:apply-templates select="./PNL_ESPECIFICACAO_entity/document[@documentcode='RESUMOMODIF']"/>
			<xsl:apply-templates select="./PNL_ESPECIFICACAO_entity/document[@documentcode='DESENHOSMOD']"/>
		</documents-info>
	</xsl:template>
	<!-- Template clcn_Names to call applicants and agents trees  -->
	<xsl:template match="CLCN_NOME">
		<xsl:apply-templates select="./CLCN_PROCURADOR"/>
		<xsl:apply-templates select="./CLCN_DEPOSITANTE"/>
	</xsl:template>
	<!-- Create Applicants group-->
	<xsl:template match="CLCN_DEPOSITANTE">
		<group name="Applicants">
			<xsl:apply-templates select="./CLCN_ITEM_DEP_PJ"/>
			<xsl:apply-templates select="./CLCN_ITEM_DEP_PF"/>
		</group>
	</xsl:template>
	<!-- Create Representatives group-->
	<xsl:template match="CLCN_PROCURADOR">
		<group name="Representatives">
			<xsl:apply-templates select="./CLCN_ITEM_PROCURADOR_PJ"/>
			<xsl:apply-templates select="./CLCN_ITEM_PROCURADOR_PF"/>
		</group>
	</xsl:template>
	<!-- Create person tree-->
	<xsl:template match="CLCN_ITEM_DEP_PF">
		<person>
			<xsl:attribute name="name">
				<xsl:value-of select="concat(./PNL_DEP_PF_NOME/ED_DEP_PF_NOME,' ', ./PNL_DEP_PF_NOME/ED_DEP_PF_SOBRENOME )"/>
			</xsl:attribute>
		</person>
	</xsl:template>
	<!-- create person from the legal applicant -->
	<xsl:template match="CLCN_ITEM_DEP_PJ">
		<person>
			<xsl:attribute name="name">
				<xsl:value-of select="./PNL_DEP_PJ_NOME/ED_DEP_PJ_EMPRESA"/>
			</xsl:attribute>
			<xsl:attribute name="legal">1</xsl:attribute>
		</person>
	</xsl:template>
	<!-- create person from the agent -->
	<xsl:template match="CLCN_ITEM_PROCURADOR_PF">
		<person>
			<xsl:attribute name="name">
				<xsl:value-of select="concat(./PNL_PROCURADOR_PF_NOME/ED_PROC_PF_NOME,' ', ./PNL_PROCURADOR_PF_NOME/ED_PROC_PF_SOBRENOME)"/>
			</xsl:attribute>
		</person>
	</xsl:template>
	<!-- create person from the agent -->
	<xsl:template match="CLCN_ITEM_PROCURADOR_PJ">
		<person>
			<xsl:attribute name="name">
				<xsl:value-of select="./PNL_PROCURADOR_PJ_NOME/ED_PROC_PJ_EMPRESA"/>
			</xsl:attribute>
		</person>
	</xsl:template>

	<!--Creating fileentity from doc_clcn_SpecificationDocs_entity -->
	<xsl:template match="PNL_ESPECIFICACAO_entity">
		<fileentity>
			<xsl:attribute name="page-count">
				<xsl:value-of select="@pagecount"/>
			</xsl:attribute>
			<xsl:attribute name="filename">
				<xsl:value-of select="@filename"/>
			</xsl:attribute>
		</fileentity>
	</xsl:template>
	<!-- creating document -->
	<xsl:template match="document">
		<document>
			<xsl:attribute name="code">
				<xsl:value-of select="@documentcode"/>
			</xsl:attribute>
			<xsl:attribute name="from-page">
				<xsl:value-of select="@frompage"/>
			</xsl:attribute>
			<xsl:attribute name="to-page">
				<xsl:value-of select="@topage"/>
			</xsl:attribute>
		</document>
	</xsl:template>

	<!-- 
	Priority information
	-->
	<xsl:template match="CLCN_PRIORIDADE">
		<priority-info>
			<xsl:apply-templates select="CLCN_ITEM_PRIORIDADE"/>
		</priority-info>
	</xsl:template>
	<xsl:template match="CLCN_ITEM_PRIORIDADE">
		<xsl:element name="priority">
			<xsl:attribute name="sequence">
				<xsl:value-of select="position()"/>
			</xsl:attribute>
			<xsl:attribute name="priority-attached">
				<xsl:choose>
					<xsl:when test="PNL_PRIORIDADE_DOCUMENTO/document">
						<xsl:value-of select="'true'"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="'false'"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="priority-trans-attached">
				<xsl:choose>
					<xsl:when test="PNL_PRIORIDADE_TRADUCAO/document">
						<xsl:value-of select="'true'"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="'false'"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
		</xsl:element>
	</xsl:template>

	<!--
	Biological Material info
	-->

	<xsl:template match="PG_MATERIAL_BIOLOGICO">
		<biology-info>
			<xsl:apply-templates select="CLCN_MATERIAL_BIOLOGICO/CLCN_ITEM_MATERIAL_BIOLOGICO"/>
		</biology-info>
	</xsl:template>

	<xsl:template match="CLCN_ITEM_MATERIAL_BIOLOGICO">
		<biology>
			<xsl:attribute name="sequence">
				<xsl:value-of select="position()"/>
			</xsl:attribute>
			<xsl:attribute name="biology-attached">
				<xsl:choose>
					<xsl:when test="pnlAttachBioRcpt/document">
						<xsl:value-of select="'True'"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="'False'"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
		</biology>
	</xsl:template>

	<!-- template to switch XFO file names to correct language version -->
	<xsl:template name="SwitchXFOfileName">
		<xsl:param name="FileName"/>
		<!-- VERSAO ORIGINAL, COM 3 LINGUAS
		<xsl:variable name="varLang">
			<xsl:value-of select="$language"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="translate($varLang,'pt','PT')='PT'">
				<xsl:value-of select="concat(substring-before($FileName,'.xfo'),'_pt.xfo')"></xsl:value-of>
			</xsl:when>
			<xsl:when test="translate($varLang,'es','ES')='ES'">
				<xsl:value-of select="concat(substring-before($FileName,'.xfo'),'_es.xfo')"></xsl:value-of>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="concat(substring-before($FileName,'.xfo'),'_en.xfo')"></xsl:value-of>
			</xsl:otherwise>
		</xsl:choose>
		-->
		<!-- CODIGO NOVO - FORMULARIO SOMENTE EM PORTUGUES -->
		<!--<xsl:value-of select="concat(substring-before($FileName,'.xfo'),'_pt.xfo')"></xsl:value-of>-->
		<!-- CODIGO NOVO - FORMULARIO GENERICO -->
		<xsl:value-of select="concat(substring-before($FileName,'.xfo'),'.xfo')"></xsl:value-of>
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