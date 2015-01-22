<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
br104-request_bo.xslt
*****************************************************************************
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	
	<!-- Criando variáveis globais --> 
	<xsl:variable name="ESPEC-BR" select="'ESPEC-BR'"/>
	
	<xsl:variable name="vazio" select="''"/>
	<xsl:variable name="zero" select="'0'"/>
	<xsl:variable name="outra" select="'OUTRA'"/>
	
	<xsl:variable name="true" select="'true'"/>
	<xsl:variable name="false" select="'false'"/>
	
	<xsl:variable name="yes" select="'yes'"/>
	<xsl:variable name="no" select="'no'"/>
	
	<xsl:variable name="public" select="'public'"/>
	<xsl:variable name="non-public" select="'non-public'"/>
	
	<xsl:variable name="applicant" select="'applicant'"/>
	<xsl:variable name="applicant-inventor" select="'applicant-inventor'"/>
	<xsl:variable name="inventor" select="'inventor'"/>
	<!-- requerente/interessado -->
	<xsl:variable name="interessado" select="'interessado'"/>
	<xsl:variable name="cedente" select="'cedente'"/>
	<xsl:variable name="procurador" select="'procurador'"/>
	
	<xsl:variable name="pessoa-juridica" select="'legal'"/>
	<xsl:variable name="pessoa-fisica" select="'natural'"/>
	<xsl:variable name="PJ" select="'PJ'"/>
	<xsl:variable name="PF" select="'PF'"/>
	<xsl:variable name="CNPJ" select="'CNPJ'"/>
	<xsl:variable name="CPF" select="'CPF'"/>
	
	<xsl:variable name="prioridade-interna" select="'INTERNA'"/>
	<xsl:variable name="prioridade-unionista" select="'UNIONISTA'"/>
	<xsl:variable name="prioridade-unionista-trad" select="'UNIONISTA_TRADUC'"/>
	
	<xsl:variable name="patente-de-invencao" select="'patente de invencao'"/>
	<xsl:variable name="modelo-de-utilidade" select="'modelo de utilidade'"/>
	<xsl:variable name="certificado-de-adicao" select="'certificado de adicao'"/>
	
	<xsl:variable name="xsltsl-str-upper" select="'&#x0041;&#x0042;&#x0043;&#x0044;&#x0045;&#x0046;&#x0047;&#x0048;&#x0049;&#x004A;&#x004B;&#x004C;&#x004D;&#x004E;&#x004F;&#x0050;&#x0051;&#x0052;&#x0053;&#x0054;&#x0055;&#x0056;&#x0057;&#x0058;&#x0059;&#x005A;&#x039C;&#x00C0;&#x00C1;&#x00C2;&#x00C3;&#x00C4;&#x00C5;&#x00C6;&#x00C7;&#x00C8;&#x00C9;&#x00CA;&#x00CB;&#x00CC;&#x00CD;&#x00CE;&#x00CF;&#x00D0;&#x00D1;&#x00D2;&#x00D3;&#x00D4;&#x00D5;&#x00D6;&#x00D8;&#x00D9;&#x00DA;&#x00DB;&#x00DC;&#x00DD;&#x00DE;&#x0178;&#x0100;&#x0102;&#x0104;&#x0106;&#x0108;&#x010A;&#x010C;&#x010E;&#x0110;&#x0112;&#x0114;&#x0116;&#x0118;&#x011A;&#x011C;&#x011E;&#x0120;&#x0122;&#x0124;&#x0126;&#x0128;&#x012A;&#x012C;&#x012E;&#x0049;&#x0132;&#x0134;&#x0136;&#x0139;&#x013B;&#x013D;&#x013F;&#x0141;&#x0143;&#x0145;&#x0147;&#x014A;&#x014C;&#x014E;&#x0150;&#x0152;&#x0154;&#x0156;&#x0158;&#x015A;&#x015C;&#x015E;&#x0160;&#x0162;&#x0164;&#x0166;&#x0168;&#x016A;&#x016C;&#x016E;&#x0170;&#x0172;&#x0174;&#x0176;&#x0179;&#x017B;&#x017D;&#x0053;&#x0182;&#x0184;&#x0187;&#x018B;&#x0191;&#x01F6;&#x0198;&#x01A0;&#x01A2;&#x01A4;&#x01A7;&#x01AC;&#x01AF;&#x01B3;&#x01B5;&#x01B8;&#x01BC;&#x01F7;&#x01C4;&#x01C4;&#x01C7;&#x01C7;&#x01CA;&#x01CA;&#x01CD;&#x01CF;&#x01D1;&#x01D3;&#x01D5;&#x01D7;&#x01D9;&#x01DB;&#x018E;&#x01DE;&#x01E0;&#x01E2;&#x01E4;&#x01E6;&#x01E8;&#x01EA;&#x01EC;&#x01EE;&#x01F1;&#x01F1;&#x01F4;&#x01F8;&#x01FA;&#x01FC;&#x01FE;&#x0200;&#x0202;&#x0204;&#x0206;&#x0208;&#x020A;&#x020C;&#x020E;&#x0210;&#x0212;&#x0214;&#x0216;&#x0218;&#x021A;&#x021C;&#x021E;&#x0222;&#x0224;&#x0226;&#x0228;&#x022A;&#x022C;&#x022E;&#x0230;&#x0232;&#x0181;&#x0186;&#x0189;&#x018A;&#x018F;&#x0190;&#x0193;&#x0194;&#x0197;&#x0196;&#x019C;&#x019D;&#x019F;&#x01A6;&#x01A9;&#x01AE;&#x01B1;&#x01B2;&#x01B7;&#x0399;&#x0386;&#x0388;&#x0389;&#x038A;&#x0391;&#x0392;&#x0393;&#x0394;&#x0395;&#x0396;&#x0397;&#x0398;&#x0399;&#x039A;&#x039B;&#x039C;&#x039D;&#x039E;&#x039F;&#x03A0;&#x03A1;&#x03A3;&#x03A3;&#x03A4;&#x03A5;&#x03A6;&#x03A7;&#x03A8;&#x03A9;&#x03AA;&#x03AB;&#x038C;&#x038E;&#x038F;&#x0392;&#x0398;&#x03A6;&#x03A0;&#x03DA;&#x03DC;&#x03DE;&#x03E0;&#x03E2;&#x03E4;&#x03E6;&#x03E8;&#x03EA;&#x03EC;&#x03EE;&#x039A;&#x03A1;&#x03A3;&#x0395;&#x0410;&#x0411;&#x0412;&#x0413;&#x0414;&#x0415;&#x0416;&#x0417;&#x0418;&#x0419;&#x041A;&#x041B;&#x041C;&#x041D;&#x041E;&#x041F;&#x0420;&#x0421;&#x0422;&#x0423;&#x0424;&#x0425;&#x0426;&#x0427;&#x0428;&#x0429;&#x042A;&#x042B;&#x042C;&#x042D;&#x042E;&#x042F;&#x0400;&#x0401;&#x0402;&#x0403;&#x0404;&#x0405;&#x0406;&#x0407;&#x0408;&#x0409;&#x040A;&#x040B;&#x040C;&#x040D;&#x040E;&#x040F;&#x0460;&#x0462;&#x0464;&#x0466;&#x0468;&#x046A;&#x046C;&#x046E;&#x0470;&#x0472;&#x0474;&#x0476;&#x0478;&#x047A;&#x047C;&#x047E;&#x0480;&#x048C;&#x048E;&#x0490;&#x0492;&#x0494;&#x0496;&#x0498;&#x049A;&#x049C;&#x049E;&#x04A0;&#x04A2;&#x04A4;&#x04A6;&#x04A8;&#x04AA;&#x04AC;&#x04AE;&#x04B0;&#x04B2;&#x04B4;&#x04B6;&#x04B8;&#x04BA;&#x04BC;&#x04BE;&#x04C1;&#x04C3;&#x04C7;&#x04CB;&#x04D0;&#x04D2;&#x04D4;&#x04D6;&#x04D8;&#x04DA;&#x04DC;&#x04DE;&#x04E0;&#x04E2;&#x04E4;&#x04E6;&#x04E8;&#x04EA;&#x04EC;&#x04EE;&#x04F0;&#x04F2;&#x04F4;&#x04F8;&#x0531;&#x0532;&#x0533;&#x0534;&#x0535;&#x0536;&#x0537;&#x0538;&#x0539;&#x053A;&#x053B;&#x053C;&#x053D;&#x053E;&#x053F;&#x0540;&#x0541;&#x0542;&#x0543;&#x0544;&#x0545;&#x0546;&#x0547;&#x0548;&#x0549;&#x054A;&#x054B;&#x054C;&#x054D;&#x054E;&#x054F;&#x0550;&#x0551;&#x0552;&#x0553;&#x0554;&#x0555;&#x0556;&#x1E00;&#x1E02;&#x1E04;&#x1E06;&#x1E08;&#x1E0A;&#x1E0C;&#x1E0E;&#x1E10;&#x1E12;&#x1E14;&#x1E16;&#x1E18;&#x1E1A;&#x1E1C;&#x1E1E;&#x1E20;&#x1E22;&#x1E24;&#x1E26;&#x1E28;&#x1E2A;&#x1E2C;&#x1E2E;&#x1E30;&#x1E32;&#x1E34;&#x1E36;&#x1E38;&#x1E3A;&#x1E3C;&#x1E3E;&#x1E40;&#x1E42;&#x1E44;&#x1E46;&#x1E48;&#x1E4A;&#x1E4C;&#x1E4E;&#x1E50;&#x1E52;&#x1E54;&#x1E56;&#x1E58;&#x1E5A;&#x1E5C;&#x1E5E;&#x1E60;&#x1E62;&#x1E64;&#x1E66;&#x1E68;&#x1E6A;&#x1E6C;&#x1E6E;&#x1E70;&#x1E72;&#x1E74;&#x1E76;&#x1E78;&#x1E7A;&#x1E7C;&#x1E7E;&#x1E80;&#x1E82;&#x1E84;&#x1E86;&#x1E88;&#x1E8A;&#x1E8C;&#x1E8E;&#x1E90;&#x1E92;&#x1E94;&#x1E60;&#x1EA0;&#x1EA2;&#x1EA4;&#x1EA6;&#x1EA8;&#x1EAA;&#x1EAC;&#x1EAE;&#x1EB0;&#x1EB2;&#x1EB4;&#x1EB6;&#x1EB8;&#x1EBA;&#x1EBC;&#x1EBE;&#x1EC0;&#x1EC2;&#x1EC4;&#x1EC6;&#x1EC8;&#x1ECA;&#x1ECC;&#x1ECE;&#x1ED0;&#x1ED2;&#x1ED4;&#x1ED6;&#x1ED8;&#x1EDA;&#x1EDC;&#x1EDE;&#x1EE0;&#x1EE2;&#x1EE4;&#x1EE6;&#x1EE8;&#x1EEA;&#x1EEC;&#x1EEE;&#x1EF0;&#x1EF2;&#x1EF4;&#x1EF6;&#x1EF8;&#x1F08;&#x1F09;&#x1F0A;&#x1F0B;&#x1F0C;&#x1F0D;&#x1F0E;&#x1F0F;&#x1F18;&#x1F19;&#x1F1A;&#x1F1B;&#x1F1C;&#x1F1D;&#x1F28;&#x1F29;&#x1F2A;&#x1F2B;&#x1F2C;&#x1F2D;&#x1F2E;&#x1F2F;&#x1F38;&#x1F39;&#x1F3A;&#x1F3B;&#x1F3C;&#x1F3D;&#x1F3E;&#x1F3F;&#x1F48;&#x1F49;&#x1F4A;&#x1F4B;&#x1F4C;&#x1F4D;&#x1F59;&#x1F5B;&#x1F5D;&#x1F5F;&#x1F68;&#x1F69;&#x1F6A;&#x1F6B;&#x1F6C;&#x1F6D;&#x1F6E;&#x1F6F;&#x1FBA;&#x1FBB;&#x1FC8;&#x1FC9;&#x1FCA;&#x1FCB;&#x1FDA;&#x1FDB;&#x1FF8;&#x1FF9;&#x1FEA;&#x1FEB;&#x1FFA;&#x1FFB;&#x1F88;&#x1F89;&#x1F8A;&#x1F8B;&#x1F8C;&#x1F8D;&#x1F8E;&#x1F8F;&#x1F98;&#x1F99;&#x1F9A;&#x1F9B;&#x1F9C;&#x1F9D;&#x1F9E;&#x1F9F;&#x1FA8;&#x1FA9;&#x1FAA;&#x1FAB;&#x1FAC;&#x1FAD;&#x1FAE;&#x1FAF;&#x1FB8;&#x1FB9;&#x1FBC;&#x0399;&#x1FCC;&#x1FD8;&#x1FD9;&#x1FE8;&#x1FE9;&#x1FEC;&#x1FFC;&#x2160;&#x2161;&#x2162;&#x2163;&#x2164;&#x2165;&#x2166;&#x2167;&#x2168;&#x2169;&#x216A;&#x216B;&#x216C;&#x216D;&#x216E;&#x216F;&#x24B6;&#x24B7;&#x24B8;&#x24B9;&#x24BA;&#x24BB;&#x24BC;&#x24BD;&#x24BE;&#x24BF;&#x24C0;&#x24C1;&#x24C2;&#x24C3;&#x24C4;&#x24C5;&#x24C6;&#x24C7;&#x24C8;&#x24C9;&#x24CA;&#x24CB;&#x24CC;&#x24CD;&#x24CE;&#x24CF;&#xFF21;&#xFF22;&#xFF23;&#xFF24;&#xFF25;&#xFF26;&#xFF27;&#xFF28;&#xFF29;&#xFF2A;&#xFF2B;&#xFF2C;&#xFF2D;&#xFF2E;&#xFF2F;&#xFF30;&#xFF31;&#xFF32;&#xFF33;&#xFF34;&#xFF35;&#xFF36;&#xFF37;&#xFF38;&#xFF39;&#xFF3A;&#x10400;&#x10401;&#x10402;&#x10403;&#x10404;&#x10405;&#x10406;&#x10407;&#x10408;&#x10409;&#x1040A;&#x1040B;&#x1040C;&#x1040D;&#x1040E;&#x1040F;&#x10410;&#x10411;&#x10412;&#x10413;&#x10414;&#x10415;&#x10416;&#x10417;&#x10418;&#x10419;&#x1041A;&#x1041B;&#x1041C;&#x1041D;&#x1041E;&#x1041F;&#x10420;&#x10421;&#x10422;&#x10423;&#x10424;&#x10425;'"/>
	<xsl:variable name="xsltsl-str-lower" select="'&#x0061;&#x0062;&#x0063;&#x0064;&#x0065;&#x0066;&#x0067;&#x0068;&#x0069;&#x006A;&#x006B;&#x006C;&#x006D;&#x006E;&#x006F;&#x0070;&#x0071;&#x0072;&#x0073;&#x0074;&#x0075;&#x0076;&#x0077;&#x0078;&#x0079;&#x007A;&#x00B5;&#x00E0;&#x00E1;&#x00E2;&#x00E3;&#x00E4;&#x00E5;&#x00E6;&#x00E7;&#x00E8;&#x00E9;&#x00EA;&#x00EB;&#x00EC;&#x00ED;&#x00EE;&#x00EF;&#x00F0;&#x00F1;&#x00F2;&#x00F3;&#x00F4;&#x00F5;&#x00F6;&#x00F8;&#x00F9;&#x00FA;&#x00FB;&#x00FC;&#x00FD;&#x00FE;&#x00FF;&#x0101;&#x0103;&#x0105;&#x0107;&#x0109;&#x010B;&#x010D;&#x010F;&#x0111;&#x0113;&#x0115;&#x0117;&#x0119;&#x011B;&#x011D;&#x011F;&#x0121;&#x0123;&#x0125;&#x0127;&#x0129;&#x012B;&#x012D;&#x012F;&#x0131;&#x0133;&#x0135;&#x0137;&#x013A;&#x013C;&#x013E;&#x0140;&#x0142;&#x0144;&#x0146;&#x0148;&#x014B;&#x014D;&#x014F;&#x0151;&#x0153;&#x0155;&#x0157;&#x0159;&#x015B;&#x015D;&#x015F;&#x0161;&#x0163;&#x0165;&#x0167;&#x0169;&#x016B;&#x016D;&#x016F;&#x0171;&#x0173;&#x0175;&#x0177;&#x017A;&#x017C;&#x017E;&#x017F;&#x0183;&#x0185;&#x0188;&#x018C;&#x0192;&#x0195;&#x0199;&#x01A1;&#x01A3;&#x01A5;&#x01A8;&#x01AD;&#x01B0;&#x01B4;&#x01B6;&#x01B9;&#x01BD;&#x01BF;&#x01C5;&#x01C6;&#x01C8;&#x01C9;&#x01CB;&#x01CC;&#x01CE;&#x01D0;&#x01D2;&#x01D4;&#x01D6;&#x01D8;&#x01DA;&#x01DC;&#x01DD;&#x01DF;&#x01E1;&#x01E3;&#x01E5;&#x01E7;&#x01E9;&#x01EB;&#x01ED;&#x01EF;&#x01F2;&#x01F3;&#x01F5;&#x01F9;&#x01FB;&#x01FD;&#x01FF;&#x0201;&#x0203;&#x0205;&#x0207;&#x0209;&#x020B;&#x020D;&#x020F;&#x0211;&#x0213;&#x0215;&#x0217;&#x0219;&#x021B;&#x021D;&#x021F;&#x0223;&#x0225;&#x0227;&#x0229;&#x022B;&#x022D;&#x022F;&#x0231;&#x0233;&#x0253;&#x0254;&#x0256;&#x0257;&#x0259;&#x025B;&#x0260;&#x0263;&#x0268;&#x0269;&#x026F;&#x0272;&#x0275;&#x0280;&#x0283;&#x0288;&#x028A;&#x028B;&#x0292;&#x0345;&#x03AC;&#x03AD;&#x03AE;&#x03AF;&#x03B1;&#x03B2;&#x03B3;&#x03B4;&#x03B5;&#x03B6;&#x03B7;&#x03B8;&#x03B9;&#x03BA;&#x03BB;&#x03BC;&#x03BD;&#x03BE;&#x03BF;&#x03C0;&#x03C1;&#x03C2;&#x03C3;&#x03C4;&#x03C5;&#x03C6;&#x03C7;&#x03C8;&#x03C9;&#x03CA;&#x03CB;&#x03CC;&#x03CD;&#x03CE;&#x03D0;&#x03D1;&#x03D5;&#x03D6;&#x03DB;&#x03DD;&#x03DF;&#x03E1;&#x03E3;&#x03E5;&#x03E7;&#x03E9;&#x03EB;&#x03ED;&#x03EF;&#x03F0;&#x03F1;&#x03F2;&#x03F5;&#x0430;&#x0431;&#x0432;&#x0433;&#x0434;&#x0435;&#x0436;&#x0437;&#x0438;&#x0439;&#x043A;&#x043B;&#x043C;&#x043D;&#x043E;&#x043F;&#x0440;&#x0441;&#x0442;&#x0443;&#x0444;&#x0445;&#x0446;&#x0447;&#x0448;&#x0449;&#x044A;&#x044B;&#x044C;&#x044D;&#x044E;&#x044F;&#x0450;&#x0451;&#x0452;&#x0453;&#x0454;&#x0455;&#x0456;&#x0457;&#x0458;&#x0459;&#x045A;&#x045B;&#x045C;&#x045D;&#x045E;&#x045F;&#x0461;&#x0463;&#x0465;&#x0467;&#x0469;&#x046B;&#x046D;&#x046F;&#x0471;&#x0473;&#x0475;&#x0477;&#x0479;&#x047B;&#x047D;&#x047F;&#x0481;&#x048D;&#x048F;&#x0491;&#x0493;&#x0495;&#x0497;&#x0499;&#x049B;&#x049D;&#x049F;&#x04A1;&#x04A3;&#x04A5;&#x04A7;&#x04A9;&#x04AB;&#x04AD;&#x04AF;&#x04B1;&#x04B3;&#x04B5;&#x04B7;&#x04B9;&#x04BB;&#x04BD;&#x04BF;&#x04C2;&#x04C4;&#x04C8;&#x04CC;&#x04D1;&#x04D3;&#x04D5;&#x04D7;&#x04D9;&#x04DB;&#x04DD;&#x04DF;&#x04E1;&#x04E3;&#x04E5;&#x04E7;&#x04E9;&#x04EB;&#x04ED;&#x04EF;&#x04F1;&#x04F3;&#x04F5;&#x04F9;&#x0561;&#x0562;&#x0563;&#x0564;&#x0565;&#x0566;&#x0567;&#x0568;&#x0569;&#x056A;&#x056B;&#x056C;&#x056D;&#x056E;&#x056F;&#x0570;&#x0571;&#x0572;&#x0573;&#x0574;&#x0575;&#x0576;&#x0577;&#x0578;&#x0579;&#x057A;&#x057B;&#x057C;&#x057D;&#x057E;&#x057F;&#x0580;&#x0581;&#x0582;&#x0583;&#x0584;&#x0585;&#x0586;&#x1E01;&#x1E03;&#x1E05;&#x1E07;&#x1E09;&#x1E0B;&#x1E0D;&#x1E0F;&#x1E11;&#x1E13;&#x1E15;&#x1E17;&#x1E19;&#x1E1B;&#x1E1D;&#x1E1F;&#x1E21;&#x1E23;&#x1E25;&#x1E27;&#x1E29;&#x1E2B;&#x1E2D;&#x1E2F;&#x1E31;&#x1E33;&#x1E35;&#x1E37;&#x1E39;&#x1E3B;&#x1E3D;&#x1E3F;&#x1E41;&#x1E43;&#x1E45;&#x1E47;&#x1E49;&#x1E4B;&#x1E4D;&#x1E4F;&#x1E51;&#x1E53;&#x1E55;&#x1E57;&#x1E59;&#x1E5B;&#x1E5D;&#x1E5F;&#x1E61;&#x1E63;&#x1E65;&#x1E67;&#x1E69;&#x1E6B;&#x1E6D;&#x1E6F;&#x1E71;&#x1E73;&#x1E75;&#x1E77;&#x1E79;&#x1E7B;&#x1E7D;&#x1E7F;&#x1E81;&#x1E83;&#x1E85;&#x1E87;&#x1E89;&#x1E8B;&#x1E8D;&#x1E8F;&#x1E91;&#x1E93;&#x1E95;&#x1E9B;&#x1EA1;&#x1EA3;&#x1EA5;&#x1EA7;&#x1EA9;&#x1EAB;&#x1EAD;&#x1EAF;&#x1EB1;&#x1EB3;&#x1EB5;&#x1EB7;&#x1EB9;&#x1EBB;&#x1EBD;&#x1EBF;&#x1EC1;&#x1EC3;&#x1EC5;&#x1EC7;&#x1EC9;&#x1ECB;&#x1ECD;&#x1ECF;&#x1ED1;&#x1ED3;&#x1ED5;&#x1ED7;&#x1ED9;&#x1EDB;&#x1EDD;&#x1EDF;&#x1EE1;&#x1EE3;&#x1EE5;&#x1EE7;&#x1EE9;&#x1EEB;&#x1EED;&#x1EEF;&#x1EF1;&#x1EF3;&#x1EF5;&#x1EF7;&#x1EF9;&#x1F00;&#x1F01;&#x1F02;&#x1F03;&#x1F04;&#x1F05;&#x1F06;&#x1F07;&#x1F10;&#x1F11;&#x1F12;&#x1F13;&#x1F14;&#x1F15;&#x1F20;&#x1F21;&#x1F22;&#x1F23;&#x1F24;&#x1F25;&#x1F26;&#x1F27;&#x1F30;&#x1F31;&#x1F32;&#x1F33;&#x1F34;&#x1F35;&#x1F36;&#x1F37;&#x1F40;&#x1F41;&#x1F42;&#x1F43;&#x1F44;&#x1F45;&#x1F51;&#x1F53;&#x1F55;&#x1F57;&#x1F60;&#x1F61;&#x1F62;&#x1F63;&#x1F64;&#x1F65;&#x1F66;&#x1F67;&#x1F70;&#x1F71;&#x1F72;&#x1F73;&#x1F74;&#x1F75;&#x1F76;&#x1F77;&#x1F78;&#x1F79;&#x1F7A;&#x1F7B;&#x1F7C;&#x1F7D;&#x1F80;&#x1F81;&#x1F82;&#x1F83;&#x1F84;&#x1F85;&#x1F86;&#x1F87;&#x1F90;&#x1F91;&#x1F92;&#x1F93;&#x1F94;&#x1F95;&#x1F96;&#x1F97;&#x1FA0;&#x1FA1;&#x1FA2;&#x1FA3;&#x1FA4;&#x1FA5;&#x1FA6;&#x1FA7;&#x1FB0;&#x1FB1;&#x1FB3;&#x1FBE;&#x1FC3;&#x1FD0;&#x1FD1;&#x1FE0;&#x1FE1;&#x1FE5;&#x1FF3;&#x2170;&#x2171;&#x2172;&#x2173;&#x2174;&#x2175;&#x2176;&#x2177;&#x2178;&#x2179;&#x217A;&#x217B;&#x217C;&#x217D;&#x217E;&#x217F;&#x24D0;&#x24D1;&#x24D2;&#x24D3;&#x24D4;&#x24D5;&#x24D6;&#x24D7;&#x24D8;&#x24D9;&#x24DA;&#x24DB;&#x24DC;&#x24DD;&#x24DE;&#x24DF;&#x24E0;&#x24E1;&#x24E2;&#x24E3;&#x24E4;&#x24E5;&#x24E6;&#x24E7;&#x24E8;&#x24E9;&#xFF41;&#xFF42;&#xFF43;&#xFF44;&#xFF45;&#xFF46;&#xFF47;&#xFF48;&#xFF49;&#xFF4A;&#xFF4B;&#xFF4C;&#xFF4D;&#xFF4E;&#xFF4F;&#xFF50;&#xFF51;&#xFF52;&#xFF53;&#xFF54;&#xFF55;&#xFF56;&#xFF57;&#xFF58;&#xFF59;&#xFF5A;&#x10428;&#x10429;&#x1042A;&#x1042B;&#x1042C;&#x1042D;&#x1042E;&#x1042F;&#x10430;&#x10431;&#x10432;&#x10433;&#x10434;&#x10435;&#x10436;&#x10437;&#x10438;&#x10439;&#x1043A;&#x1043B;&#x1043C;&#x1043D;&#x1043E;&#x1043F;&#x10440;&#x10441;&#x10442;&#x10443;&#x10444;&#x10445;&#x10446;&#x10447;&#x10448;&#x10449;&#x1044A;&#x1044B;&#x1044C;&#x1044D;'"/>

	<xsl:variable name="existe-interessado-pagamento-grus">
		<xsl:for-each select="//interessados/*">
			<xsl:if test="@gru = $true">
				<xsl:value-of select="$true"/>
			</xsl:if>
		</xsl:for-each>
	</xsl:variable>	
	<!-- ******************************************************* -->	
	
	<xsl:variable name="pkgheader" select="document('pkgheader.xml')"/>
	
	<!-- Inicando processamento -->
	<xsl:template match="requisicao">
		<xsl:element name="{@formulario}">
			<xsl:attribute name="referencenumber">
				<xsl:value-of select="file-reference-id"/>
			</xsl:attribute>
			<xsl:attribute name="language_of_proceedings">
				<xsl:value-of select="@lang"/>
			</xsl:attribute>
			<xsl:attribute name="formtype">
				<xsl:value-of select="@formulario"/>
			</xsl:attribute>
			<xsl:attribute name="formversion">
				<xsl:value-of select="@formulario-versao"/>
			</xsl:attribute>
			<xsl:attribute name="softwarename">
				<xsl:value-of select="$pkgheader/pkgheader/application-software/software-name"/>
			</xsl:attribute>
			<xsl:attribute name="softwareversion">
				<xsl:value-of select="$pkgheader/pkgheader/application-software/software-version"/>
			</xsl:attribute>
			<xsl:attribute name="dateproduced">
				<xsl:value-of select="@date-produced"/>
			</xsl:attribute>
			
			<xsl:call-template name="criar-paginas"/>
			<xsl:element name="Forms" />		
			
		</xsl:element>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Templates -->
	
	<!-- ******************************************************* -->
	
	<!-- Criando as páginas -->
	<xsl:template name="criar-paginas">
		<xsl:element name="PAGINAS">
			<!-- Informações do pedido -->
			<xsl:element name="PG_PEDIDO">
				<xsl:apply-templates select="info-processo"/>
			</xsl:element>
			
			<!-- Informações dos participantes -->
			<xsl:element name="PG_NOME">
				<xsl:apply-templates select="participantes"/>
			</xsl:element>
			
			<!-- Informações das prioridades -->
			<xsl:element name="PG_PRIORIDADE">
				<xsl:apply-templates select="prioridades"/>
			</xsl:element>
			
			<!-- Informações de acesso a material biológico -->
			<xsl:element name="PG_MATERIAL_BIOLOGICO">
				<xsl:apply-templates select="acessos-mat-biologico"/>
			</xsl:element>
			
			<!-- Informações dos documentos -->
			<xsl:element name="PG_DOCUMENTO">
				<xsl:apply-templates select="documentos"/>
			</xsl:element>			
			
			<!-- Informações das declarações -->
			<xsl:element name="PG_DECLARACAO">
				<xsl:apply-templates select="declaracoes"/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Preparar informações do pedido -->
	<xsl:template match="info-processo">
		<xsl:element name="TPN_PEDIDO">
			<xsl:element name="TPN_NATUREZA">			
				<xsl:element name="RB_PATENTE_INVENCAO">
					<xsl:variable name="ehPatenteInvencao" select="boolean(tipo-processo = $patente-de-invencao)"/>
					<xsl:value-of select="string($ehPatenteInvencao)"/>
				</xsl:element>
				<xsl:element name="RB_MODELO_UTILIDADE">
					<xsl:variable name="ehModeloUtilidade" select="boolean(tipo-processo = $modelo-de-utilidade)"/>
					<xsl:value-of select="string($ehModeloUtilidade)"/>
				</xsl:element>				
				<xsl:element name="RB_CERTIFICADO_ADICAO">
					<xsl:value-of select="string(boolean(tipo-processo = $certificado-de-adicao))"/>
				</xsl:element>
				<xsl:element name="CB_NUM_CERT_ADICAO">
					<xsl:value-of select="processo/tipo"/>					
				</xsl:element>
				<xsl:element name="ED_NUM_CERT_ADICAO">
					<xsl:value-of select="processo/numero"/>					
				</xsl:element>
			</xsl:element>
			
			<xsl:element name="TPN_REQUER">		
			
				<xsl:element name="RB_REQUER_1">
					<xsl:value-of select="string(boolean(info-peticao/info[@tipo='TIPOREQUER_1'] = $true))"/>					
				</xsl:element>
				<xsl:element name="RB_REQUER_2">
					<xsl:value-of select="string(boolean(info-peticao/info[@tipo='TIPOREQUER_2'] = $true))"/>					
				</xsl:element>
				<xsl:element name="RB_REQUER_3">
					<xsl:value-of select="string(boolean(info-peticao/info[@tipo='TIPOREQUER_3'] = $true))"/>					
				</xsl:element>
				<xsl:element name="CB_REQUER_1">
					<xsl:value-of select="string(boolean(info-peticao/info[@tipo='REQUER_1'] = $true))"/>					
				</xsl:element>
				<xsl:element name="CB_REQUER_2">
					<xsl:value-of select="string(boolean(info-peticao/info[@tipo='REQUER_2'] = $true))"/>					
				</xsl:element>
				<xsl:element name="CB_REQUER_13">
					<xsl:value-of select="string(boolean(info-peticao/info[@tipo='REQUER_3'] = $true))"/>					
				</xsl:element>
				<xsl:element name="CB_REQUER_3">
					<xsl:value-of select="string(boolean(info-peticao/info[@tipo='REQUER_4'] = $true))"/>
				</xsl:element>
				<xsl:element name="CB_REQUER_OUTROS">
					<xsl:value-of select="string(boolean(info-peticao/info[@tipo='REQUER_OUTROS_5'] = $true))"/>
				</xsl:element>
				<xsl:element name="MEM_REQUER_OUTROS">
					<xsl:value-of select="info-peticao/info[@tipo='REQUER_OUTROS_MEM']"/>					
				</xsl:element>				
			</xsl:element>

			<xsl:element name="ED_TITULO_INVENCAO">
				<xsl:value-of select="titulo"/>
			</xsl:element>
			
		</xsl:element>		
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Preparar informações dos participantes -->
	<xsl:template match="participantes">
		<xsl:element name="CLCN_NOME">
			<xsl:element name="CLCN_DEPOSITANTE">
				<xsl:apply-templates select="interessados/interessado"/>
			</xsl:element>
			<xsl:element name="CLCN_PROCURADOR">
				<xsl:apply-templates select="procuradores/procurador"/>
			</xsl:element>
			<xsl:element name="CLCN_INVENTOR">
				<xsl:apply-templates select="inventores/inventor"/>
			</xsl:element>
			<xsl:element name="CLCN_CEDENTE">
				<xsl:apply-templates select="cedentes/cedente"/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<!-- Interessado -->
	<xsl:template match="interessado">
		<xsl:call-template name="criar-pessoa-fisica-juridica"/>
	</xsl:template>
	
	<!-- Procurador -->
	<xsl:template match="procurador">
		<xsl:call-template name="criar-pessoa-fisica-juridica"/>
	</xsl:template>
	
	<!-- Inventor -->
	<xsl:template match="inventor">
		<xsl:call-template name="criar-pessoa-fisica-juridica"/>
	</xsl:template>
	
	<!-- Cedente -->
	<xsl:template match="cedente">
		<xsl:call-template name="criar-pessoa-fisica-juridica"/>
	</xsl:template>
	
	<!-- Cria pessoa física ou jurídica pata as partes -->
	<xsl:template name="criar-pessoa-fisica-juridica">
		<xsl:variable name="tipo-legal">
			<xsl:choose>
				<xsl:when test="@tipo-legal = $pessoa-juridica"><xsl:value-of select="$PJ"/></xsl:when>
				<xsl:otherwise><xsl:value-of select="$PF"/></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="cpf-cnpj">
			<xsl:choose>
				<xsl:when test="$tipo-legal = $PJ"><xsl:value-of select="$CNPJ"/></xsl:when>
				<xsl:otherwise><xsl:value-of select="$CPF"/></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="entidade">
			<xsl:choose>
				<xsl:when test="local-name() = $interessado">
					<xsl:value-of select="concat('DEP_',$tipo-legal)"/>
				</xsl:when>
				<xsl:when test="local-name() = $procurador">
					<xsl:value-of select="concat('PROC_',$tipo-legal)"/>
				</xsl:when>
				<xsl:when test="local-name() = $inventor">
					<xsl:value-of select="'INVENTOR'"/>
				</xsl:when>
				<xsl:when test="local-name() = $cedente">
					<xsl:value-of select="concat('CEDENTE_',$tipo-legal)"/>
				</xsl:when>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="entidade_longa">
			<xsl:choose>
				<xsl:when test="local-name() = $procurador">
					<xsl:value-of select="concat('PROCURADOR_',$tipo-legal)"/>
				</xsl:when>
				<xsl:otherwise><xsl:value-of select="$vazio"/></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="titulo">
			<xsl:choose>
				<xsl:when test="$entidade_longa != $vazio"><xsl:value-of select="$entidade_longa"/></xsl:when>
				<xsl:otherwise><xsl:value-of select="$entidade"/></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		
		<xsl:element name="CLCN_ITEM_{$titulo}">
			<xsl:if test="(local-name() = $interessado) and ($tipo-legal = $PF)">
				<xsl:element name="PNL_{$titulo}_INVENTOR_DEPOSITANTE">
					<xsl:element name="CHB_{$entidade}_INVENTOR_DEPOSITANTE">
						<xsl:value-of select="string(boolean(@tipo = $applicant-inventor))"/>
					</xsl:element>
					<xsl:element name="CHB_{$entidade}_INVENTOR_DEPOSITANTE_ANONIMO">
						<xsl:value-of select="string(boolean(@publicidade = $non-public))"/>
					</xsl:element>
				</xsl:element>
			</xsl:if>
			
			<xsl:if test="(local-name() = $inventor)">
				<xsl:element name="CHB_{$entidade}_ANONIMATO">
					<xsl:value-of select="string(boolean(@publicidade = $non-public))"/>
				</xsl:element>
			</xsl:if>
			
			<xsl:element name="PNL_{$titulo}_NOME">
				<xsl:choose>
					<xsl:when test="$tipo-legal = $PJ">
						<xsl:element name="ED_{$entidade}_EMPRESA">
							<xsl:value-of select="livro-endereco/nome-organizacao"/>
						</xsl:element>
					</xsl:when>
					<xsl:otherwise>
						<xsl:element name="ED_{$entidade}_TITULO">
							<xsl:value-of select="livro-endereco/qualificacao"/>
						</xsl:element>
						<xsl:element name="ED_{$entidade}_SOBRENOME">
							<xsl:value-of select="livro-endereco/sobrenome"/>
						</xsl:element>
						<xsl:element name="ED_{$entidade}_NOME">
							<xsl:value-of select="livro-endereco/nome"/>
						</xsl:element>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:element name="ED_{$entidade}_{$cpf-cnpj}">
					<xsl:value-of select="livro-endereco/cpf-cnpj"/>
				</xsl:element>
				<xsl:if test="(local-name() = $interessado)">
					<xsl:element name="CHB_{$entidade}_PAGAMENTO_GRU">
						<xsl:value-of select="string(boolean(@gru = $true))"/>
					</xsl:element>
				</xsl:if>
				<xsl:if test="(local-name() = $procurador) and ($tipo-legal = $PF)">
					<xsl:element name="ED_{$entidade}_API">
						<xsl:value-of select="livro-endereco/api"/>
					</xsl:element>
					<xsl:element name="ED_{$entidade}_OAB">
						<xsl:value-of select="livro-endereco/oab"/>
					</xsl:element>
				</xsl:if>
			</xsl:element>
			
			<xsl:element name="PNL_{$titulo}_ENDERECO">
				<xsl:element name="ED_{$entidade}_ENDERECO">
					<xsl:value-of select="livro-endereco/endereco/logradouro"/>
				</xsl:element>
				<xsl:element name="ED_{$entidade}_CIDADE">
					<xsl:value-of select="livro-endereco/endereco/cidade"/>
				</xsl:element>
				<xsl:element name="CCBB_{$entidade}_ESTADO">
					<xsl:if test="normalize-space(livro-endereco/endereco/estado) != $vazio">
						<xsl:attribute name="content">
							<xsl:value-of select="livro-endereco/endereco/estado-extenso"/>
						</xsl:attribute>
						<xsl:value-of select="livro-endereco/endereco/estado"/>
					</xsl:if>
				</xsl:element>
				<xsl:element name="ED_{$entidade}_CEP">
					<xsl:value-of select="livro-endereco/endereco/codigo-postal"/>
				</xsl:element>
				<xsl:element name="CCBB_{$entidade}_PAIS">
					<xsl:attribute name="content">
						<xsl:value-of select="livro-endereco/endereco/pais-extenso"/>
					</xsl:attribute>
					<xsl:value-of select="livro-endereco/endereco/pais"/>
				</xsl:element>
				<xsl:element name="ED_{$entidade}_ESTADO">
					<xsl:if test="normalize-space(livro-endereco/endereco/estado) = $vazio">
						<xsl:value-of select="livro-endereco/endereco/estado-extenso"/>
					</xsl:if>
				</xsl:element>
			</xsl:element>	
			
			<xsl:element name="PNL_{$titulo}_CONTATO">
				<xsl:element name="ED_{$entidade}_FONE">
					<xsl:call-template name="remover-mascara-fax-telefone">
						<xsl:with-param name="numero" select="livro-endereco/telefone"/>
						<xsl:with-param name="pais" select="livro-endereco/endereco/pais"/>
					</xsl:call-template>					
				</xsl:element>
				<xsl:element name="ED_{$entidade}_FAX">
					<xsl:call-template name="remover-mascara-fax-telefone">
						<xsl:with-param name="numero" select="livro-endereco/fax"/>
						<xsl:with-param name="pais" select="livro-endereco/endereco/pais"/>
					</xsl:call-template>					
				</xsl:element>
				<xsl:element name="ED_{$entidade}_EMAIL">
					<xsl:value-of select="livro-endereco/email"/>
				</xsl:element>
			</xsl:element>
			
			<xsl:if test="(local-name() = $interessado) and ($tipo-legal = $PJ)">
				<xsl:element name="PNL_MPE_{$titulo}">
					<xsl:element name="CHB_MPE_{$entidade}">
						<xsl:value-of select="string(boolean(@pme = $true))"/>
					</xsl:element>
				</xsl:element>
			</xsl:if>
		</xsl:element>
	</xsl:template>	
	
	<!-- ******************************************************* -->
	
	<!-- Preparar informações das prioridades -->
	<xsl:template match="prioridades">
		<xsl:element name="CLCN_ITEM_PRIORIDADE">
			<xsl:apply-templates select="prioridade"/>
		</xsl:element>
		<xsl:element name="TPN_DECLARA_PRIORIDADE">
			<xsl:element name="CB_DECLARA_PRIORIDADE">
				<xsl:value-of select="string(boolean(declaracao-prioridade = $true))"/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="prioridade">
		<xsl:variable name="tipo_prioridade">
			<xsl:choose>
				<xsl:when test="boolean(@interna = $true)">
					<xsl:value-of select="$prioridade-interna"/>
				</xsl:when>
				<xsl:when test="boolean(@interna = $false) and (declaracao-traducao)">
					<xsl:value-of select="$prioridade-unionista-trad"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$prioridade-unionista"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		
		<xsl:element name="PNL_PRIORIDADE_{$tipo_prioridade}_entity">
			<xsl:attribute name="sequence"><xsl:value-of select="@sequencia"/></xsl:attribute>
			<xsl:attribute name="filename"><xsl:value-of select="documento/@nome-deposito"/></xsl:attribute>
			<xsl:attribute name="sourcefilename"><xsl:value-of select="documento/@nome-original"/></xsl:attribute>
			<xsl:attribute name="pagecount"><xsl:value-of select="documento/@total-paginas"/></xsl:attribute>
			
			<xsl:element name="PNL_ITEM_PRIORIDADE_{$tipo_prioridade}">
				<xsl:element name="PNL_PRIORIDADE_{$tipo_prioridade}_INFO">
				
					<xsl:choose>
						<xsl:when test="boolean(@interna = $true)">	
							<xsl:element name="TPN_PRIORIDADE_INTERNA_NUMERO">
								<xsl:element name="CB_PRIORIDADE_{$tipo_prioridade}_NUMERO">
									<xsl:value-of select="tipo"/>
								</xsl:element>
								<xsl:element name="ED_PRIORIDADE_{$tipo_prioridade}_NUMERO">
									<xsl:call-template name="str-to-upper">
										<xsl:with-param name="texto"><xsl:value-of select="numero"/></xsl:with-param>
									</xsl:call-template>
								</xsl:element>
							</xsl:element>
						</xsl:when>
						
						<xsl:when test="$tipo_prioridade = $prioridade-unionista)">	
							<xsl:choose>
								<xsl:when test="pais-escritorio = 'BR'">
									<xsl:element name="TPN_PRIORIDADE_UNIONISTA_BR_NUMERO">
										<xsl:element name="CB_PRIORIDADE_UNIONISTA_BR_NUMERO">
											<xsl:value-of select="tipo"/>
										</xsl:element>
										<xsl:element name="ED_PRIORIDADE_UNIONISTA_BR_NUMERO">
											<xsl:call-template name="str-to-upper">
												<xsl:with-param name="texto"><xsl:value-of select="numero"/></xsl:with-param>
											</xsl:call-template>
										</xsl:element>
									</xsl:element>								
								</xsl:when>								
								<xsl:otherwise>
									<xsl:element name="ED_PRIORIDADE_{$tipo_prioridade}_NUMERO">
										<xsl:call-template name="str-to-upper">
											<xsl:with-param name="texto"><xsl:value-of select="numero"/></xsl:with-param>
										</xsl:call-template>
									</xsl:element>								
								</xsl:otherwise>
							</xsl:choose>						
						</xsl:when>			
						
						<xsl:otherwise>
							<xsl:element name="ED_PRIORIDADE_{$tipo_prioridade}_NUMERO">
								<xsl:call-template name="str-to-upper">
									<xsl:with-param name="texto"><xsl:value-of select="numero"/></xsl:with-param>
								</xsl:call-template>
							</xsl:element>
						</xsl:otherwise>
					</xsl:choose>				
					
					<xsl:element name="EDD_PRIORIDADE_{$tipo_prioridade}_DATA">
						<xsl:value-of select="data"/>
					</xsl:element>
					<xsl:element name="CCBB_PRIORIDADE_{$tipo_prioridade}_ESCRITORIO">
						<xsl:attribute name="content">
							<xsl:value-of select="pais-escritorio-extenso"/>
						</xsl:attribute>
						<xsl:value-of select="pais-escritorio"/>
					</xsl:element>
				</xsl:element>
				<xsl:if test="boolean($tipo_prioridade = $prioridade-unionista-trad)">
					<xsl:element name="PNL_PRIORIDADE_DECLARACAO">
						<xsl:element name="CHB_PRIORIDADE_DECLARACAO">
							<xsl:value-of select="string(boolean(declaracao-traducao = $true))"/>
						</xsl:element>
					</xsl:element>
				</xsl:if>
			</xsl:element>
			
			<xsl:call-template name="criar-documents">
				<xsl:with-param name="origem" select="documento" />
			</xsl:call-template>
		</xsl:element>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Preparar informações de acesso a material biológico -->
	<xsl:template match="acessos-mat-biologico">
		<xsl:element name="CLCN_MATERIAL_BIOLOGICO">
			<xsl:apply-templates select="acesso"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="acesso">
		<xsl:element name="CLCN_ITEM_MATERIAL_BIOLOGICO">
			<xsl:attribute name="sequence"><xsl:value-of select="@sequencia"/></xsl:attribute>
			
			<xsl:element name="PNL_MATERIAL_BIO_RECIBO">
				<xsl:attribute name="filecheckcontrol">CHB_MATERIAL_BIO_ARQUIVO_RECIBO</xsl:attribute>
				<xsl:attribute name="documentcode">RECIBOMATBIO</xsl:attribute>
				<xsl:attribute name="filenamecontrol">LBL_MATERIAL_BIO_ARQUIVO_RECIBO</xsl:attribute>
				<xsl:attribute name="attachcontrol">BTN_MATERIAL_BIO_ARQUIVO_RECIBO</xsl:attribute>
				<xsl:attribute name="fileextension">Portable Document Format|*.pdf</xsl:attribute>
				<xsl:attribute name="renamefilename">RECIBOMATBIO</xsl:attribute>
				<xsl:attribute name="multiple">true</xsl:attribute>
				
				<xsl:element name="CHB_MATERIAL_BIO_ARQUIVO_RECIBO">
					<xsl:value-of select="string(boolean(documento))"/>
				</xsl:element>
				<xsl:if test="documento">
					<xsl:call-template name="criar-documents">
						<xsl:with-param name="origem" select="documento" />
					</xsl:call-template>
				</xsl:if>
			</xsl:element>
			<xsl:element name="PNL_MATERIAL_BIO_DETALHES">
				<xsl:element name="ED_MATERIAL_BIO_IDENTIFICACAO">
					<xsl:value-of select="identificacao"/>
				</xsl:element>
				<xsl:element name="ED_MATERIAL_BIO_NUM_ADESAO">
					<xsl:value-of select="numero-adesao"/>
				</xsl:element>

				<xsl:if test="centro-depositario = $outra">
					<xsl:element name="CCBB_MATERIAL_BIO_INSTITUICAO">						
						<xsl:value-of select="centro-depositario"/>
					</xsl:element>
					<xsl:element name="ED_MATERIAL_BIO_NOME_INSTITUICAO">						
						<xsl:value-of select="centro-depositario-extenso"/>
					</xsl:element>								
				</xsl:if>
				
				<xsl:if test="not(centro-depositario = $outra)">
					<xsl:element name="CCBB_MATERIAL_BIO_INSTITUICAO">
						<xsl:attribute name="content">
							<xsl:value-of select="centro-depositario-extenso"/>
						</xsl:attribute>
						<xsl:value-of select="centro-depositario"/>
					</xsl:element>					
				</xsl:if>				

				<xsl:element name="ME_MATERIAL_BIOLOGICO_INSTITUICAO_ENDERECO">
					<xsl:value-of select="endereco-centro-depositario"/>
				</xsl:element>
				
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Preparar informações dos documentos -->
	<xsl:template match="documentos">
		<xsl:element name="PC_DOCUMENTO">
			<xsl:element name="TS_ESPECIFICACAO">
				<xsl:element name="CLCN_ESPECIFICACAO">
					<xsl:for-each select="documento[@doc-code = $ESPEC-BR]">
						<xsl:call-template name="documentos-especificacao"/>
					</xsl:for-each>
				</xsl:element>
			</xsl:element>
			
			<xsl:element name="TS_OUTROSDOCUMENTOS">
				<xsl:element name="CLCN_ITEM_OUTROSDOCUMENTOS">
					<xsl:for-each select="documento">
						<xsl:call-template name="documentos-outros-documentos"/>
					</xsl:for-each>
				</xsl:element>
			</xsl:element>
			
			<xsl:element name="TS_LISTAGEMSEQUENCIA">
				<xsl:element name="PNL_LISTAGEM_SEQUENCIA">
					<xsl:element name="CHB_LISTAGEM_SEQUENCIA_DEPOSITO_CONTEM">
						<xsl:value-of select="string(boolean(documento[@doc-code = 'SEQBIOTXT']))"/>
					</xsl:element>

					<xsl:call-template name="documentos-listagem-sequencias"/>
				</xsl:element>
			</xsl:element>
			
			<xsl:element name="TS_ESPECIFICACAO_OPCAO">
				<xsl:element name="PNL_DECLARA_TXT_IGUAL_PDF">
					<xsl:element name="CB_DECLARA_TXT_IGUAL_PDF">
						<xsl:value-of select="string(boolean(declaracao-pdf-txt = $true))"/>
					</xsl:element>
				</xsl:element>
				<xsl:element name="PNL_ESPECIFICACAO_OPCAO">
					<xsl:element name="CLCN_ITEM_ESPECIFICACAO_OPCAO">
						<xsl:for-each select="documento">
							<xsl:call-template name="documentos-especificacao-opcao"/>
						</xsl:for-each>
					</xsl:element>
				</xsl:element>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<!-- Documentos de especificação (relatório descritivo, reivindicacoes, resumo e desenhos) -->
	<xsl:template name="documentos-especificacao">
		<xsl:element name="PNL_ESPECIFICACAO_entity">
			<xsl:attribute name="filename"><xsl:value-of select="@nome-deposito"/></xsl:attribute>
			<xsl:attribute name="pagecount"><xsl:value-of select="@total-paginas"/></xsl:attribute>
			<xsl:attribute name="sourcefilename"><xsl:value-of select="@nome-original"/></xsl:attribute>
			
			<xsl:variable name="ehResumo" select="boolean(secao[@doc-code = 'RESUMOMODIF'])" />
			<xsl:element name="CLCN_ITEM_RESUMO">
				<xsl:element name="CHB_RESUMO">
					<xsl:value-of select="string($ehResumo)"/>
				</xsl:element>
				<xsl:element name="PNL_RESUMO_PAGINAS">
					<xsl:element name="ED_RESUMO_DE">
						<xsl:if test="$ehResumo">
							<xsl:value-of select="secao[@doc-code = 'RESUMOMODIF']/@pagina-inicial" />
						</xsl:if>
					</xsl:element>
					<xsl:element name="ED_RESUMO_PARA">
						<xsl:if test="$ehResumo">
							<xsl:value-of select="secao[@doc-code = 'RESUMOMODIF']/@pagina-final" />
						</xsl:if>
					</xsl:element>
				</xsl:element>
			</xsl:element>
			
			<xsl:variable name="ehRelatorioDescritivo" select="boolean(secao[@doc-code = 'RELDESCMODIF'])" />
			<xsl:element name="CLCN_ITEM_RELATORIO_DESCRITIVO">
				<xsl:element name="CHB_RELATORIO_DESCRITIVO">
					<xsl:value-of select="string($ehRelatorioDescritivo)"/>
				</xsl:element>
				<xsl:element name="PNL_RELATORIO_DESCRITIVO_PAGINAS">
					<xsl:element name="ED_RELATORIO_DESCRITIVO_DE">
						<xsl:if test="$ehRelatorioDescritivo">
							<xsl:value-of select="secao[@doc-code = 'RELDESCMODIF']/@pagina-inicial" />
						</xsl:if>
					</xsl:element>
					<xsl:element name="ED_RELATORIO_DESCRITIVO_PARA">
						<xsl:if test="$ehRelatorioDescritivo">
							<xsl:value-of select="secao[@doc-code = 'RELDESCMODIF']/@pagina-final" />
						</xsl:if>
					</xsl:element>
				</xsl:element>
			</xsl:element>
			
			<xsl:variable name="ehReivindicacao" select="boolean(secao[@doc-code = 'REIVINDMODIF'])" />
			<xsl:element name="CLCN_ITEM_REIVINDICACAO">
				<xsl:element name="CHB_REIVINDICACAO">
					<xsl:value-of select="string($ehReivindicacao)"/>
				</xsl:element>
				<xsl:element name="PNL_REIVINDICACAO_PAGINAS">
					<xsl:element name="ED_REIVINDICACAO_DE">
						<xsl:if test="$ehReivindicacao">
							<xsl:value-of select="secao[@doc-code = 'REIVINDMODIF']/@pagina-inicial" />
						</xsl:if>
					</xsl:element>
					<xsl:element name="ED_REIVINDICACAO_PARA">
						<xsl:if test="$ehReivindicacao">
							<xsl:value-of select="secao[@doc-code = 'REIVINDMODIF']/@pagina-final" />
						</xsl:if>
					</xsl:element>
				</xsl:element>
			</xsl:element>
			
			<xsl:variable name="ehDesenho" select="boolean(secao[@doc-code = 'DESENHOSMOD'])" />
			<xsl:element name="CLCN_ITEM_DESENHO">
				<xsl:element name="CHB_DESENHO">
					<xsl:value-of select="string($ehDesenho)"/>
				</xsl:element>
				<xsl:element name="PNL_DESENHO_PAGINAS">
					<xsl:element name="ED_DESENHO_DE">
						<xsl:if test="$ehDesenho">
							<xsl:value-of select="secao[@doc-code = 'DESENHOSMOD']/@pagina-inicial" />
						</xsl:if>
					</xsl:element>
					<xsl:element name="ED_DESENHO_PARA">
						<xsl:if test="$ehDesenho">
							<xsl:value-of select="secao[@doc-code = 'DESENHOSMOD']/@pagina-final" />
						</xsl:if>
					</xsl:element>
				</xsl:element>
				<xsl:element name="TPN_DESENHO">
					<xsl:element name="ED_FIGURA_RESUMO">
						<xsl:if test="$ehDesenho">
							<xsl:value-of select="@desenho-para-resumo" />
						</xsl:if>
					</xsl:element>
					<xsl:element name="ED_DESENHO_NUM_DESENHOS">
						<xsl:if test="$ehDesenho">
							<xsl:value-of select="@numero-de-desenhos" />
						</xsl:if>
					</xsl:element>
					
					<xsl:element name="CB_DESENHO_COLORIDO">
						<xsl:if test="$ehDesenho">
							<xsl:value-of select="string(boolean(@desenhos-coloridos = $true))" />
						</xsl:if>
					</xsl:element>					
				</xsl:element>
			</xsl:element>
			<xsl:call-template name="criar-documents">
				<xsl:with-param name="origem" select="."/>
			</xsl:call-template>
		</xsl:element>
	</xsl:template>
	
	<!-- Outros documentos gerais -->
	<xsl:template name="documentos-outros-documentos">
		<xsl:choose>
			
			<xsl:when test="@doc-code = 'GRU'">
				<xsl:call-template name="criar-documentos-especiais">
					<xsl:with-param name="entidade">GRU</xsl:with-param>
					<xsl:with-param name="codigoDocumento">GRU</xsl:with-param>
					<xsl:with-param name="nomeDocumento">GRU</xsl:with-param>
					<xsl:with-param name="tipoArquivos">*.pdf</xsl:with-param>
				</xsl:call-template>
			</xsl:when>
			
			<xsl:when test="@doc-code-sec = 'INDEX-BR'">
				<xsl:call-template name="criar-documentos-especiais">
					<xsl:with-param name="entidade">DOCS_GERAIS</xsl:with-param>
					<xsl:with-param name="codigoDocumento">INDEX-BR</xsl:with-param>
					<xsl:with-param name="nomeDocumento">Documentos gerais</xsl:with-param>
					<xsl:with-param name="tipoArquivos">*.pdf</xsl:with-param>
				</xsl:call-template>
			</xsl:when>
			
			<xsl:when test="@doc-code = 'OUTROS'">
				<xsl:call-template name="criar-documentos-especiais">
					<xsl:with-param name="entidade">OUTRO_DOC</xsl:with-param>
					<xsl:with-param name="codigoDocumento">OUTROS</xsl:with-param>
					<xsl:with-param name="nomeDocumento">Other document</xsl:with-param>
					<xsl:with-param name="tipoArquivos">*.pdf</xsl:with-param>
				</xsl:call-template>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	
	<!-- Documentos do listagem de sequencias biológicas -->
	<xsl:template name="documentos-listagem-sequencias">
		
		<xsl:variable name="temListagemTXT" select="boolean(documento[@doc-code = 'SEQBIOTXT'])" />
		<xsl:element name="PNL_LISTAGEM_SEQUENCIA_ASCII">
			<xsl:attribute name="filecheckcontrol">CHB_LISTAGEM_SEQUENCIA_ASCII</xsl:attribute>
			<xsl:attribute name="documentcode">SEQBIOTXT</xsl:attribute>
			<xsl:attribute name="filenamecontrol">LBL_LISTAGEM_SEQUENCIA_ASCII</xsl:attribute>
			<xsl:attribute name="attachcontrol">BTN_LISTAGEM_SEQUENCIA_ASCII</xsl:attribute>
			<xsl:attribute name="fileextension">Nucleotide and Amino Acid Sequence Listing|*.app;*.seq|ASCII Text|*.txt|Archive File Format|*.zip</xsl:attribute>
			<xsl:attribute name="renamefilename">SEQBIOTXT</xsl:attribute>
			<xsl:attribute name="multiple"><xsl:value-of select="$false"/></xsl:attribute>
			
			<xsl:element name="CHB_LISTAGEM_SEQUENCIA_ASCII">
				<xsl:value-of select="string($temListagemTXT)"/>
			</xsl:element>
			<xsl:if test="$temListagemTXT">
				<xsl:call-template name="criar-documents">
					<xsl:with-param name="origem" select="documento[@doc-code = 'SEQBIOTXT']"/>
				</xsl:call-template>
			</xsl:if>
		</xsl:element>
		
		<xsl:variable name="temCodControlePDF" select="boolean(documento[@doc-code = 'CCSEQBIO'])" />
		<xsl:element name="PNL_CODIGO_CONTROLE_PDF">
			<xsl:attribute name="filecheckcontrol">CHB_CODIGO_CONTROLE_PDF</xsl:attribute>
			<xsl:attribute name="documentcode">CCSEQBIO</xsl:attribute>
			<xsl:attribute name="filenamecontrol">LBL_CODIGO_CONTROLE_PDF</xsl:attribute>
			<xsl:attribute name="attachcontrol">BTN_CODIGO_CONTROLE_PDF</xsl:attribute>
			<xsl:attribute name="fileextension">Portable Document Format|*.pdf</xsl:attribute>
			<xsl:attribute name="renamefilename">CCSEQBIO</xsl:attribute>
			<xsl:attribute name="multiple"><xsl:value-of select="$false"/></xsl:attribute>
			
			<xsl:element name="CHB_CODIGO_CONTROLE_PDF">
				<xsl:value-of select="string($temCodControlePDF)"/>
			</xsl:element>
			<xsl:if test="$temCodControlePDF">
				<xsl:call-template name="criar-documents">
					<xsl:with-param name="origem" select="documento[@doc-code = 'CCSEQBIO']"/>
				</xsl:call-template>
			</xsl:if>
		</xsl:element>
		
		<xsl:variable name="temCodControleXML" select="boolean(documento[@doc-code = 'CCSEQBIOXML'])" />
		<xsl:element name="PNL_CODIGO_CONTROLE_XML">
			<xsl:attribute name="filecheckcontrol">CHB_CODIGO_CONTROLE_XML</xsl:attribute>
			<xsl:attribute name="documentcode">CCSEQBIOXML</xsl:attribute>
			<xsl:attribute name="filenamecontrol">LBL_CODIGO_CONTROLE_XML</xsl:attribute>
			<xsl:attribute name="attachcontrol">BTN_CODIGO_CONTROLE_XML</xsl:attribute>
			<xsl:attribute name="fileextension">Extensible Markup Language|*.xml</xsl:attribute>
			<xsl:attribute name="renamefilename">CCSEQBIOXML</xsl:attribute>
			<xsl:attribute name="multiple"><xsl:value-of select="$false"/></xsl:attribute>
			
			<xsl:element name="CHB_CODIGO_CONTROLE_XML">
				<xsl:value-of select="string($temCodControleXML)"/>
			</xsl:element>
			<xsl:if test="$temCodControleXML">
				<xsl:call-template name="criar-documents">
					<xsl:with-param name="origem" select="documento[@doc-code = 'CCSEQBIOXML']"/>
				</xsl:call-template>
			</xsl:if>
		</xsl:element>
		
		<xsl:variable name="temDeclaracaoListagem" select="boolean(documento[@doc-code = 'DECLIST'])" />
		<xsl:element name="PNL_LISTAGEM_SEQUENCIA_RESOLUCAO">
			<xsl:attribute name="filecheckcontrol">CHB_LISTAGEM_SEQUENCIA_RESOLUCAO</xsl:attribute>
			<xsl:attribute name="documentcode">DECLIST</xsl:attribute>
			<xsl:attribute name="filenamecontrol">LBL_LISTAGEM_SEQUENCIA_RESOLUCAO</xsl:attribute>
			<xsl:attribute name="attachcontrol">BTN_LISTAGEM_SEQUENCIA_RESOLUCAO</xsl:attribute>
			<xsl:attribute name="fileextension">Portable Document Format|*.pdf</xsl:attribute>
			<xsl:attribute name="renamefilename">DECLIST</xsl:attribute>
			<xsl:attribute name="multiple"><xsl:value-of select="$false"/></xsl:attribute>
			
			<xsl:element name="CHB_LISTAGEM_SEQUENCIA_RESOLUCAO">
				<xsl:value-of select="string($temDeclaracaoListagem)"/>
			</xsl:element>
			<xsl:if test="$temDeclaracaoListagem">
				<xsl:call-template name="criar-documents">
					<xsl:with-param name="origem" select="documento[@doc-code = 'DECLIST']"/>
				</xsl:call-template>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<!-- Documentos de especificação em formato texto (relatório descritivo, reivindicacoes, resumo) -->
	<xsl:template name="documentos-especificacao-opcao">
		<xsl:choose>
			<xsl:when test="@doc-code = 'RELATDESCTXT'">
				<xsl:call-template name="criar-documentos-especiais">
					<xsl:with-param name="entidade">DESCRITIVO_TXT</xsl:with-param>
					<xsl:with-param name="codigoDocumento">RELATDESCTXT</xsl:with-param>
					<xsl:with-param name="nomeDocumento">Relatorio descritivo txt</xsl:with-param>
					<xsl:with-param name="tipoArquivos">*.txt</xsl:with-param>
				</xsl:call-template>
			</xsl:when>
			<xsl:when test="@doc-code = 'REIVINDTXT'">
				<xsl:call-template name="criar-documentos-especiais">
					<xsl:with-param name="entidade">REIVINDICACAO_TXT</xsl:with-param>
					<xsl:with-param name="codigoDocumento">REIVINDTXT</xsl:with-param>
					<xsl:with-param name="nomeDocumento">Reivindicacoes txt</xsl:with-param>
					<xsl:with-param name="tipoArquivos">*.txt</xsl:with-param>
				</xsl:call-template>
			</xsl:when>
			<xsl:when test="@doc-code = 'RESUMOTXT'">
				<xsl:call-template name="criar-documentos-especiais">
					<xsl:with-param name="entidade">RESUMO_TXT</xsl:with-param>
					<xsl:with-param name="codigoDocumento">RESUMOTXT</xsl:with-param>
					<xsl:with-param name="nomeDocumento">Resumo txt</xsl:with-param>
					<xsl:with-param name="tipoArquivos">*.txt</xsl:with-param>
				</xsl:call-template>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	
	<!-- Criar documentos com formato especial -->
	<xsl:template name="criar-documentos-especiais">
		<xsl:param name="entidade" />
		<xsl:param name="codigoDocumento" />
		<xsl:param name="nomeDocumento" />
		<xsl:param name="tipoArquivos" />
		
		<xsl:element name="PNL_{$entidade}_entity">
			<xsl:attribute name="filename"><xsl:value-of select="@nome-deposito"/></xsl:attribute>
			<xsl:attribute name="pagecount"><xsl:value-of select="@total-paginas"/></xsl:attribute>
			<xsl:attribute name="sourcefilename"><xsl:value-of select="@nome-original"/></xsl:attribute>
			
			<xsl:element name="PNL_ITEM_{$entidade}">
				<xsl:attribute name="documentcode"><xsl:value-of select="$codigoDocumento"/></xsl:attribute>
				<xsl:attribute name="detailcontrol"><xsl:value-of select="$vazio"/></xsl:attribute>
				<xsl:attribute name="fromcontrol"><xsl:value-of select="$vazio"/></xsl:attribute>
				<xsl:attribute name="tocontrol"><xsl:value-of select="$vazio"/></xsl:attribute>
				<xsl:attribute name="selectcontrol"><xsl:value-of select="$vazio"/></xsl:attribute>
				<xsl:attribute name="namecontrol"><xsl:value-of select="$vazio"/></xsl:attribute>
				<xsl:attribute name="disabledcodes"><xsl:value-of select="$vazio"/></xsl:attribute>
				<xsl:attribute name="documentname"><xsl:value-of select="$nomeDocumento"/></xsl:attribute>
				<xsl:attribute name="multiple">
					<xsl:choose>
						<xsl:when test="@doc-code = 'OUTROS'"><xsl:value-of select="$true"/></xsl:when>
						<xsl:otherwise><xsl:value-of select="$false"/></xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
				<xsl:attribute name="groupindex"><xsl:value-of select="$zero"/></xsl:attribute>
				<xsl:attribute name="admissiblefileextension"><xsl:value-of select="$tipoArquivos"/></xsl:attribute>
				<xsl:attribute name="renamefilename"><xsl:value-of select="$codigoDocumento"/></xsl:attribute>
				
				<xsl:choose>
					<xsl:when test="@doc-code = 'OUTROS'">
						<xsl:element name="MEM_OUTRO_DOC_DETALHE">
							<xsl:value-of select="@observacoes"/>
						</xsl:element>
					</xsl:when>
					<xsl:when test="@doc-code = 'GRU'">
						<xsl:element name="CCBB_GRU_COD_SERVICO">
							<xsl:value-of select="@gru-servico"/>
						</xsl:element>
						<xsl:element name="ED_GRU_NUM_GRU">
							<xsl:value-of select="@gru-numero"/>
						</xsl:element>
						<xsl:element name="ED_GRU_QUANTIDADE">
							<xsl:value-of select="@gru-quantidade"/>
						</xsl:element>
						<xsl:element name="ED_GRU_NUM_RPI">
							<xsl:value-of select="@gru-rpi"/>
						</xsl:element>
						<xsl:element name="ED_GRU_NOME_DEP">
							<xsl:choose>
								<xsl:when test="$existe-interessado-pagamento-grus = ''">
									<xsl:value-of select="@gru-requerente"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="''"/>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:element>						
					</xsl:when>
					<xsl:when test="@doc-code-sec = 'INDEX-BR'">
						<xsl:element name="CCBB_TIPO_DOCUMENTO">
							<xsl:value-of select="@doc-code-int"/>
						</xsl:element>
					</xsl:when>					
				</xsl:choose>
			</xsl:element>
			<xsl:call-template name="criar-documents">
				<xsl:with-param name="origem" select="."/>
			</xsl:call-template>
		</xsl:element>
	</xsl:template>
	
	<!-- ******************************************************* -->

	<!-- Preparar informações sobre declarações -->
	<xsl:template match="declaracoes">
		<xsl:element name="PC_DECLARACAO">
			<xsl:for-each select="child::*">
				<xsl:call-template name="criar-declaracoes-finais"/>
			</xsl:for-each>
		</xsl:element>
	</xsl:template>
	
	<xsl:template name="criar-declaracoes-finais">
		<xsl:variable name="sequencia" select="substring-after(local-name(), 'declaracao-')"/>

		<xsl:element name="CHB_DECLARACAO_{$sequencia}">
			<xsl:value-of select="string(boolean(. = $true))"/>
		</xsl:element>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Métodos para montagem de file-list -->
	<xsl:template name="criar-documents">
		<xsl:param name="origem"/>
		
		<xsl:variable name="num-docs" select="count($origem/secao)" />
		
		<xsl:choose>
			<xsl:when test="$num-docs &gt; 0">
				<xsl:for-each select="$origem/secao">
					<xsl:call-template name="criar-document">
						<xsl:with-param name="documento" select="$origem"/>
						<xsl:with-param name="secao" select="."/>
					</xsl:call-template>
				</xsl:for-each>
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="criar-document">
					<xsl:with-param name="documento" select="$origem"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	
	<xsl:template name="criar-document">
		<xsl:param name="documento"/>
		<xsl:param name="secao"/>
		
		<xsl:element name="document">
			<xsl:attribute name="docdetail">
				<xsl:value-of select="$vazio"/>
			</xsl:attribute>
			<xsl:attribute name="documentcode">
				<xsl:choose>
					<xsl:when test="$secao">
						<xsl:value-of select="$secao/@doc-code" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$documento/@doc-code" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="documentname">
				<xsl:value-of select="$vazio"/>
			</xsl:attribute>
			<xsl:attribute name="filetype">
				<xsl:value-of select="$documento/@tipo"/>
			</xsl:attribute>
			<xsl:attribute name="sourcefilename">
				<xsl:value-of select="$documento/@nome-original"/>
			</xsl:attribute>
			<xsl:attribute name="filename">
				<xsl:value-of select="$documento/@nome-deposito"/>
			</xsl:attribute>
			<xsl:attribute name="pagecount">
				<xsl:value-of select="$documento/@total-paginas"/>
			</xsl:attribute>
			<xsl:attribute name="frompage">
				<xsl:choose>
					<xsl:when test="$secao">
						<xsl:value-of select="$secao/@pagina-inicial" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$zero" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="topage">
				<xsl:choose>
					<xsl:when test="$secao">
						<xsl:value-of select="$secao/@pagina-final" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$zero" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="encrypted">
				<xsl:value-of select="$zero"/>
			</xsl:attribute>
			<xsl:attribute name="signed">
				<xsl:value-of select="$zero"/>
			</xsl:attribute>
			<xsl:attribute name="otherdoc">
				<xsl:value-of select="$false"/>
			</xsl:attribute>
			</xsl:element>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Métodos para tratamento de informação -->
	<xsl:template name="str-to-upper">
		<xsl:param name="texto"/>
		<xsl:param name="texto-modificado">
			<xsl:call-template name="str-substituir">
				<xsl:with-param name="texto"><xsl:value-of select="$texto"/></xsl:with-param>
				<xsl:with-param name="trocar"><xsl:text>&#x00DF;</xsl:text></xsl:with-param>
				<xsl:with-param name="por"><xsl:text>&#x0053;</xsl:text><xsl:text>&#x0053;</xsl:text></xsl:with-param>
			</xsl:call-template>
		</xsl:param>
		
		<xsl:value-of select="translate($texto-modificado, $xsltsl-str-lower, $xsltsl-str-upper)"/>
	</xsl:template>
	
	<xsl:template name="str-substituir">
		<xsl:param name="texto"/>
		<xsl:param name="trocar"/>
		<xsl:param name="por"/>
		
		<xsl:choose>
			<xsl:when test="string-length($trocar) = 0"><xsl:value-of select="$texto"/></xsl:when>
			<xsl:when test="contains($texto, $trocar)">
				<xsl:variable name="antes" select="substring-before($texto, $trocar)"/>
				<xsl:variable name="depois" select="substring-after($texto, $trocar)"/>

				<xsl:value-of select="$antes"/>
				<xsl:value-of select="$por"/>
				<xsl:call-template name="str-substituir">
					<xsl:with-param name="texto" select="$depois"/>
					<xsl:with-param name="trocar" select="$trocar"/>
					<xsl:with-param name="por" select="$por"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$texto"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Métodos para retirar máscaras de fax e telefone -->
	<xsl:template name="remover-mascara-fax-telefone">
		<xsl:param name="numero"/>
		<xsl:param name="pais"/>
		
		<xsl:choose>
			<xsl:when test="$pais = 'BR'">
			
				<xsl:variable name="dddTelefone">
					<xsl:value-of select="substring-before(substring-after($numero, '('), ')')"/>
				</xsl:variable>
				<xsl:variable name="numTelefone">
					<xsl:value-of select="substring-after($numero, ')')"/>
				</xsl:variable>						
			
				<xsl:value-of select="concat($dddTelefone, $numTelefone)"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="substring-after($numero, '+')"/>					
			</xsl:otherwise>
		</xsl:choose>	
	</xsl:template>
	
</xsl:stylesheet>