<?xml version="1.0" encoding="UTF-8"?>
<!--
*****************************************************************************
brf109-request.xslt
*****************************************************************************
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-system="brf109-request-v2.6.dtd"/>
	
	<!-- Criando variáveis globais --> 
	<xsl:variable name="lingua" select="@language_of_proceedings"/>
	<xsl:variable name="ESPEC-BR" select="'ESPEC-BR'"/>
	
	<xsl:variable name="vazio" select="''"/>
	<xsl:variable name="true" select="'true'"/>
	<xsl:variable name="false" select="'false'"/>
	
	<xsl:variable name="public" select="'public'"/>
	<xsl:variable name="non-public" select="'non-public'"/>
	
	<xsl:variable name="applicant" select="'applicant'"/>
	<xsl:variable name="applicant-inventor" select="'applicant-inventor'"/>
	<xsl:variable name="inventor" select="'inventor'"/>
	
	<xsl:variable name="pessoa-juridica" select="'legal'"/>
	<xsl:variable name="pessoa-fisica" select="'natural'"/>
	
	<xsl:variable name="patente-de-invencao" select="'patente de invencao'"/>
	<xsl:variable name="modelo-de-utilidade" select="'modelo de utilidade'"/>
	<xsl:variable name="certificado-de-adicao" select="'certificado de adicao'"/>
	
	<xsl:variable name="prioridade-interna" select="'INTERNA'"/>
	<xsl:variable name="prioridade-unionista" select="'UNIONISTA'"/>
	<xsl:variable name="prioridade-unionista-trad" select="'UNIONISTA_TRADUC'"/>
	
	<xsl:variable name="xsltsl-str-upper" select="'&#x0041;&#x0042;&#x0043;&#x0044;&#x0045;&#x0046;&#x0047;&#x0048;&#x0049;&#x004A;&#x004B;&#x004C;&#x004D;&#x004E;&#x004F;&#x0050;&#x0051;&#x0052;&#x0053;&#x0054;&#x0055;&#x0056;&#x0057;&#x0058;&#x0059;&#x005A;&#x039C;&#x00C0;&#x00C1;&#x00C2;&#x00C3;&#x00C4;&#x00C5;&#x00C6;&#x00C7;&#x00C8;&#x00C9;&#x00CA;&#x00CB;&#x00CC;&#x00CD;&#x00CE;&#x00CF;&#x00D0;&#x00D1;&#x00D2;&#x00D3;&#x00D4;&#x00D5;&#x00D6;&#x00D8;&#x00D9;&#x00DA;&#x00DB;&#x00DC;&#x00DD;&#x00DE;&#x0178;&#x0100;&#x0102;&#x0104;&#x0106;&#x0108;&#x010A;&#x010C;&#x010E;&#x0110;&#x0112;&#x0114;&#x0116;&#x0118;&#x011A;&#x011C;&#x011E;&#x0120;&#x0122;&#x0124;&#x0126;&#x0128;&#x012A;&#x012C;&#x012E;&#x0049;&#x0132;&#x0134;&#x0136;&#x0139;&#x013B;&#x013D;&#x013F;&#x0141;&#x0143;&#x0145;&#x0147;&#x014A;&#x014C;&#x014E;&#x0150;&#x0152;&#x0154;&#x0156;&#x0158;&#x015A;&#x015C;&#x015E;&#x0160;&#x0162;&#x0164;&#x0166;&#x0168;&#x016A;&#x016C;&#x016E;&#x0170;&#x0172;&#x0174;&#x0176;&#x0179;&#x017B;&#x017D;&#x0053;&#x0182;&#x0184;&#x0187;&#x018B;&#x0191;&#x01F6;&#x0198;&#x01A0;&#x01A2;&#x01A4;&#x01A7;&#x01AC;&#x01AF;&#x01B3;&#x01B5;&#x01B8;&#x01BC;&#x01F7;&#x01C4;&#x01C4;&#x01C7;&#x01C7;&#x01CA;&#x01CA;&#x01CD;&#x01CF;&#x01D1;&#x01D3;&#x01D5;&#x01D7;&#x01D9;&#x01DB;&#x018E;&#x01DE;&#x01E0;&#x01E2;&#x01E4;&#x01E6;&#x01E8;&#x01EA;&#x01EC;&#x01EE;&#x01F1;&#x01F1;&#x01F4;&#x01F8;&#x01FA;&#x01FC;&#x01FE;&#x0200;&#x0202;&#x0204;&#x0206;&#x0208;&#x020A;&#x020C;&#x020E;&#x0210;&#x0212;&#x0214;&#x0216;&#x0218;&#x021A;&#x021C;&#x021E;&#x0222;&#x0224;&#x0226;&#x0228;&#x022A;&#x022C;&#x022E;&#x0230;&#x0232;&#x0181;&#x0186;&#x0189;&#x018A;&#x018F;&#x0190;&#x0193;&#x0194;&#x0197;&#x0196;&#x019C;&#x019D;&#x019F;&#x01A6;&#x01A9;&#x01AE;&#x01B1;&#x01B2;&#x01B7;&#x0399;&#x0386;&#x0388;&#x0389;&#x038A;&#x0391;&#x0392;&#x0393;&#x0394;&#x0395;&#x0396;&#x0397;&#x0398;&#x0399;&#x039A;&#x039B;&#x039C;&#x039D;&#x039E;&#x039F;&#x03A0;&#x03A1;&#x03A3;&#x03A3;&#x03A4;&#x03A5;&#x03A6;&#x03A7;&#x03A8;&#x03A9;&#x03AA;&#x03AB;&#x038C;&#x038E;&#x038F;&#x0392;&#x0398;&#x03A6;&#x03A0;&#x03DA;&#x03DC;&#x03DE;&#x03E0;&#x03E2;&#x03E4;&#x03E6;&#x03E8;&#x03EA;&#x03EC;&#x03EE;&#x039A;&#x03A1;&#x03A3;&#x0395;&#x0410;&#x0411;&#x0412;&#x0413;&#x0414;&#x0415;&#x0416;&#x0417;&#x0418;&#x0419;&#x041A;&#x041B;&#x041C;&#x041D;&#x041E;&#x041F;&#x0420;&#x0421;&#x0422;&#x0423;&#x0424;&#x0425;&#x0426;&#x0427;&#x0428;&#x0429;&#x042A;&#x042B;&#x042C;&#x042D;&#x042E;&#x042F;&#x0400;&#x0401;&#x0402;&#x0403;&#x0404;&#x0405;&#x0406;&#x0407;&#x0408;&#x0409;&#x040A;&#x040B;&#x040C;&#x040D;&#x040E;&#x040F;&#x0460;&#x0462;&#x0464;&#x0466;&#x0468;&#x046A;&#x046C;&#x046E;&#x0470;&#x0472;&#x0474;&#x0476;&#x0478;&#x047A;&#x047C;&#x047E;&#x0480;&#x048C;&#x048E;&#x0490;&#x0492;&#x0494;&#x0496;&#x0498;&#x049A;&#x049C;&#x049E;&#x04A0;&#x04A2;&#x04A4;&#x04A6;&#x04A8;&#x04AA;&#x04AC;&#x04AE;&#x04B0;&#x04B2;&#x04B4;&#x04B6;&#x04B8;&#x04BA;&#x04BC;&#x04BE;&#x04C1;&#x04C3;&#x04C7;&#x04CB;&#x04D0;&#x04D2;&#x04D4;&#x04D6;&#x04D8;&#x04DA;&#x04DC;&#x04DE;&#x04E0;&#x04E2;&#x04E4;&#x04E6;&#x04E8;&#x04EA;&#x04EC;&#x04EE;&#x04F0;&#x04F2;&#x04F4;&#x04F8;&#x0531;&#x0532;&#x0533;&#x0534;&#x0535;&#x0536;&#x0537;&#x0538;&#x0539;&#x053A;&#x053B;&#x053C;&#x053D;&#x053E;&#x053F;&#x0540;&#x0541;&#x0542;&#x0543;&#x0544;&#x0545;&#x0546;&#x0547;&#x0548;&#x0549;&#x054A;&#x054B;&#x054C;&#x054D;&#x054E;&#x054F;&#x0550;&#x0551;&#x0552;&#x0553;&#x0554;&#x0555;&#x0556;&#x1E00;&#x1E02;&#x1E04;&#x1E06;&#x1E08;&#x1E0A;&#x1E0C;&#x1E0E;&#x1E10;&#x1E12;&#x1E14;&#x1E16;&#x1E18;&#x1E1A;&#x1E1C;&#x1E1E;&#x1E20;&#x1E22;&#x1E24;&#x1E26;&#x1E28;&#x1E2A;&#x1E2C;&#x1E2E;&#x1E30;&#x1E32;&#x1E34;&#x1E36;&#x1E38;&#x1E3A;&#x1E3C;&#x1E3E;&#x1E40;&#x1E42;&#x1E44;&#x1E46;&#x1E48;&#x1E4A;&#x1E4C;&#x1E4E;&#x1E50;&#x1E52;&#x1E54;&#x1E56;&#x1E58;&#x1E5A;&#x1E5C;&#x1E5E;&#x1E60;&#x1E62;&#x1E64;&#x1E66;&#x1E68;&#x1E6A;&#x1E6C;&#x1E6E;&#x1E70;&#x1E72;&#x1E74;&#x1E76;&#x1E78;&#x1E7A;&#x1E7C;&#x1E7E;&#x1E80;&#x1E82;&#x1E84;&#x1E86;&#x1E88;&#x1E8A;&#x1E8C;&#x1E8E;&#x1E90;&#x1E92;&#x1E94;&#x1E60;&#x1EA0;&#x1EA2;&#x1EA4;&#x1EA6;&#x1EA8;&#x1EAA;&#x1EAC;&#x1EAE;&#x1EB0;&#x1EB2;&#x1EB4;&#x1EB6;&#x1EB8;&#x1EBA;&#x1EBC;&#x1EBE;&#x1EC0;&#x1EC2;&#x1EC4;&#x1EC6;&#x1EC8;&#x1ECA;&#x1ECC;&#x1ECE;&#x1ED0;&#x1ED2;&#x1ED4;&#x1ED6;&#x1ED8;&#x1EDA;&#x1EDC;&#x1EDE;&#x1EE0;&#x1EE2;&#x1EE4;&#x1EE6;&#x1EE8;&#x1EEA;&#x1EEC;&#x1EEE;&#x1EF0;&#x1EF2;&#x1EF4;&#x1EF6;&#x1EF8;&#x1F08;&#x1F09;&#x1F0A;&#x1F0B;&#x1F0C;&#x1F0D;&#x1F0E;&#x1F0F;&#x1F18;&#x1F19;&#x1F1A;&#x1F1B;&#x1F1C;&#x1F1D;&#x1F28;&#x1F29;&#x1F2A;&#x1F2B;&#x1F2C;&#x1F2D;&#x1F2E;&#x1F2F;&#x1F38;&#x1F39;&#x1F3A;&#x1F3B;&#x1F3C;&#x1F3D;&#x1F3E;&#x1F3F;&#x1F48;&#x1F49;&#x1F4A;&#x1F4B;&#x1F4C;&#x1F4D;&#x1F59;&#x1F5B;&#x1F5D;&#x1F5F;&#x1F68;&#x1F69;&#x1F6A;&#x1F6B;&#x1F6C;&#x1F6D;&#x1F6E;&#x1F6F;&#x1FBA;&#x1FBB;&#x1FC8;&#x1FC9;&#x1FCA;&#x1FCB;&#x1FDA;&#x1FDB;&#x1FF8;&#x1FF9;&#x1FEA;&#x1FEB;&#x1FFA;&#x1FFB;&#x1F88;&#x1F89;&#x1F8A;&#x1F8B;&#x1F8C;&#x1F8D;&#x1F8E;&#x1F8F;&#x1F98;&#x1F99;&#x1F9A;&#x1F9B;&#x1F9C;&#x1F9D;&#x1F9E;&#x1F9F;&#x1FA8;&#x1FA9;&#x1FAA;&#x1FAB;&#x1FAC;&#x1FAD;&#x1FAE;&#x1FAF;&#x1FB8;&#x1FB9;&#x1FBC;&#x0399;&#x1FCC;&#x1FD8;&#x1FD9;&#x1FE8;&#x1FE9;&#x1FEC;&#x1FFC;&#x2160;&#x2161;&#x2162;&#x2163;&#x2164;&#x2165;&#x2166;&#x2167;&#x2168;&#x2169;&#x216A;&#x216B;&#x216C;&#x216D;&#x216E;&#x216F;&#x24B6;&#x24B7;&#x24B8;&#x24B9;&#x24BA;&#x24BB;&#x24BC;&#x24BD;&#x24BE;&#x24BF;&#x24C0;&#x24C1;&#x24C2;&#x24C3;&#x24C4;&#x24C5;&#x24C6;&#x24C7;&#x24C8;&#x24C9;&#x24CA;&#x24CB;&#x24CC;&#x24CD;&#x24CE;&#x24CF;&#xFF21;&#xFF22;&#xFF23;&#xFF24;&#xFF25;&#xFF26;&#xFF27;&#xFF28;&#xFF29;&#xFF2A;&#xFF2B;&#xFF2C;&#xFF2D;&#xFF2E;&#xFF2F;&#xFF30;&#xFF31;&#xFF32;&#xFF33;&#xFF34;&#xFF35;&#xFF36;&#xFF37;&#xFF38;&#xFF39;&#xFF3A;&#x10400;&#x10401;&#x10402;&#x10403;&#x10404;&#x10405;&#x10406;&#x10407;&#x10408;&#x10409;&#x1040A;&#x1040B;&#x1040C;&#x1040D;&#x1040E;&#x1040F;&#x10410;&#x10411;&#x10412;&#x10413;&#x10414;&#x10415;&#x10416;&#x10417;&#x10418;&#x10419;&#x1041A;&#x1041B;&#x1041C;&#x1041D;&#x1041E;&#x1041F;&#x10420;&#x10421;&#x10422;&#x10423;&#x10424;&#x10425;'"/>
	<xsl:variable name="xsltsl-str-lower" select="'&#x0061;&#x0062;&#x0063;&#x0064;&#x0065;&#x0066;&#x0067;&#x0068;&#x0069;&#x006A;&#x006B;&#x006C;&#x006D;&#x006E;&#x006F;&#x0070;&#x0071;&#x0072;&#x0073;&#x0074;&#x0075;&#x0076;&#x0077;&#x0078;&#x0079;&#x007A;&#x00B5;&#x00E0;&#x00E1;&#x00E2;&#x00E3;&#x00E4;&#x00E5;&#x00E6;&#x00E7;&#x00E8;&#x00E9;&#x00EA;&#x00EB;&#x00EC;&#x00ED;&#x00EE;&#x00EF;&#x00F0;&#x00F1;&#x00F2;&#x00F3;&#x00F4;&#x00F5;&#x00F6;&#x00F8;&#x00F9;&#x00FA;&#x00FB;&#x00FC;&#x00FD;&#x00FE;&#x00FF;&#x0101;&#x0103;&#x0105;&#x0107;&#x0109;&#x010B;&#x010D;&#x010F;&#x0111;&#x0113;&#x0115;&#x0117;&#x0119;&#x011B;&#x011D;&#x011F;&#x0121;&#x0123;&#x0125;&#x0127;&#x0129;&#x012B;&#x012D;&#x012F;&#x0131;&#x0133;&#x0135;&#x0137;&#x013A;&#x013C;&#x013E;&#x0140;&#x0142;&#x0144;&#x0146;&#x0148;&#x014B;&#x014D;&#x014F;&#x0151;&#x0153;&#x0155;&#x0157;&#x0159;&#x015B;&#x015D;&#x015F;&#x0161;&#x0163;&#x0165;&#x0167;&#x0169;&#x016B;&#x016D;&#x016F;&#x0171;&#x0173;&#x0175;&#x0177;&#x017A;&#x017C;&#x017E;&#x017F;&#x0183;&#x0185;&#x0188;&#x018C;&#x0192;&#x0195;&#x0199;&#x01A1;&#x01A3;&#x01A5;&#x01A8;&#x01AD;&#x01B0;&#x01B4;&#x01B6;&#x01B9;&#x01BD;&#x01BF;&#x01C5;&#x01C6;&#x01C8;&#x01C9;&#x01CB;&#x01CC;&#x01CE;&#x01D0;&#x01D2;&#x01D4;&#x01D6;&#x01D8;&#x01DA;&#x01DC;&#x01DD;&#x01DF;&#x01E1;&#x01E3;&#x01E5;&#x01E7;&#x01E9;&#x01EB;&#x01ED;&#x01EF;&#x01F2;&#x01F3;&#x01F5;&#x01F9;&#x01FB;&#x01FD;&#x01FF;&#x0201;&#x0203;&#x0205;&#x0207;&#x0209;&#x020B;&#x020D;&#x020F;&#x0211;&#x0213;&#x0215;&#x0217;&#x0219;&#x021B;&#x021D;&#x021F;&#x0223;&#x0225;&#x0227;&#x0229;&#x022B;&#x022D;&#x022F;&#x0231;&#x0233;&#x0253;&#x0254;&#x0256;&#x0257;&#x0259;&#x025B;&#x0260;&#x0263;&#x0268;&#x0269;&#x026F;&#x0272;&#x0275;&#x0280;&#x0283;&#x0288;&#x028A;&#x028B;&#x0292;&#x0345;&#x03AC;&#x03AD;&#x03AE;&#x03AF;&#x03B1;&#x03B2;&#x03B3;&#x03B4;&#x03B5;&#x03B6;&#x03B7;&#x03B8;&#x03B9;&#x03BA;&#x03BB;&#x03BC;&#x03BD;&#x03BE;&#x03BF;&#x03C0;&#x03C1;&#x03C2;&#x03C3;&#x03C4;&#x03C5;&#x03C6;&#x03C7;&#x03C8;&#x03C9;&#x03CA;&#x03CB;&#x03CC;&#x03CD;&#x03CE;&#x03D0;&#x03D1;&#x03D5;&#x03D6;&#x03DB;&#x03DD;&#x03DF;&#x03E1;&#x03E3;&#x03E5;&#x03E7;&#x03E9;&#x03EB;&#x03ED;&#x03EF;&#x03F0;&#x03F1;&#x03F2;&#x03F5;&#x0430;&#x0431;&#x0432;&#x0433;&#x0434;&#x0435;&#x0436;&#x0437;&#x0438;&#x0439;&#x043A;&#x043B;&#x043C;&#x043D;&#x043E;&#x043F;&#x0440;&#x0441;&#x0442;&#x0443;&#x0444;&#x0445;&#x0446;&#x0447;&#x0448;&#x0449;&#x044A;&#x044B;&#x044C;&#x044D;&#x044E;&#x044F;&#x0450;&#x0451;&#x0452;&#x0453;&#x0454;&#x0455;&#x0456;&#x0457;&#x0458;&#x0459;&#x045A;&#x045B;&#x045C;&#x045D;&#x045E;&#x045F;&#x0461;&#x0463;&#x0465;&#x0467;&#x0469;&#x046B;&#x046D;&#x046F;&#x0471;&#x0473;&#x0475;&#x0477;&#x0479;&#x047B;&#x047D;&#x047F;&#x0481;&#x048D;&#x048F;&#x0491;&#x0493;&#x0495;&#x0497;&#x0499;&#x049B;&#x049D;&#x049F;&#x04A1;&#x04A3;&#x04A5;&#x04A7;&#x04A9;&#x04AB;&#x04AD;&#x04AF;&#x04B1;&#x04B3;&#x04B5;&#x04B7;&#x04B9;&#x04BB;&#x04BD;&#x04BF;&#x04C2;&#x04C4;&#x04C8;&#x04CC;&#x04D1;&#x04D3;&#x04D5;&#x04D7;&#x04D9;&#x04DB;&#x04DD;&#x04DF;&#x04E1;&#x04E3;&#x04E5;&#x04E7;&#x04E9;&#x04EB;&#x04ED;&#x04EF;&#x04F1;&#x04F3;&#x04F5;&#x04F9;&#x0561;&#x0562;&#x0563;&#x0564;&#x0565;&#x0566;&#x0567;&#x0568;&#x0569;&#x056A;&#x056B;&#x056C;&#x056D;&#x056E;&#x056F;&#x0570;&#x0571;&#x0572;&#x0573;&#x0574;&#x0575;&#x0576;&#x0577;&#x0578;&#x0579;&#x057A;&#x057B;&#x057C;&#x057D;&#x057E;&#x057F;&#x0580;&#x0581;&#x0582;&#x0583;&#x0584;&#x0585;&#x0586;&#x1E01;&#x1E03;&#x1E05;&#x1E07;&#x1E09;&#x1E0B;&#x1E0D;&#x1E0F;&#x1E11;&#x1E13;&#x1E15;&#x1E17;&#x1E19;&#x1E1B;&#x1E1D;&#x1E1F;&#x1E21;&#x1E23;&#x1E25;&#x1E27;&#x1E29;&#x1E2B;&#x1E2D;&#x1E2F;&#x1E31;&#x1E33;&#x1E35;&#x1E37;&#x1E39;&#x1E3B;&#x1E3D;&#x1E3F;&#x1E41;&#x1E43;&#x1E45;&#x1E47;&#x1E49;&#x1E4B;&#x1E4D;&#x1E4F;&#x1E51;&#x1E53;&#x1E55;&#x1E57;&#x1E59;&#x1E5B;&#x1E5D;&#x1E5F;&#x1E61;&#x1E63;&#x1E65;&#x1E67;&#x1E69;&#x1E6B;&#x1E6D;&#x1E6F;&#x1E71;&#x1E73;&#x1E75;&#x1E77;&#x1E79;&#x1E7B;&#x1E7D;&#x1E7F;&#x1E81;&#x1E83;&#x1E85;&#x1E87;&#x1E89;&#x1E8B;&#x1E8D;&#x1E8F;&#x1E91;&#x1E93;&#x1E95;&#x1E9B;&#x1EA1;&#x1EA3;&#x1EA5;&#x1EA7;&#x1EA9;&#x1EAB;&#x1EAD;&#x1EAF;&#x1EB1;&#x1EB3;&#x1EB5;&#x1EB7;&#x1EB9;&#x1EBB;&#x1EBD;&#x1EBF;&#x1EC1;&#x1EC3;&#x1EC5;&#x1EC7;&#x1EC9;&#x1ECB;&#x1ECD;&#x1ECF;&#x1ED1;&#x1ED3;&#x1ED5;&#x1ED7;&#x1ED9;&#x1EDB;&#x1EDD;&#x1EDF;&#x1EE1;&#x1EE3;&#x1EE5;&#x1EE7;&#x1EE9;&#x1EEB;&#x1EED;&#x1EEF;&#x1EF1;&#x1EF3;&#x1EF5;&#x1EF7;&#x1EF9;&#x1F00;&#x1F01;&#x1F02;&#x1F03;&#x1F04;&#x1F05;&#x1F06;&#x1F07;&#x1F10;&#x1F11;&#x1F12;&#x1F13;&#x1F14;&#x1F15;&#x1F20;&#x1F21;&#x1F22;&#x1F23;&#x1F24;&#x1F25;&#x1F26;&#x1F27;&#x1F30;&#x1F31;&#x1F32;&#x1F33;&#x1F34;&#x1F35;&#x1F36;&#x1F37;&#x1F40;&#x1F41;&#x1F42;&#x1F43;&#x1F44;&#x1F45;&#x1F51;&#x1F53;&#x1F55;&#x1F57;&#x1F60;&#x1F61;&#x1F62;&#x1F63;&#x1F64;&#x1F65;&#x1F66;&#x1F67;&#x1F70;&#x1F71;&#x1F72;&#x1F73;&#x1F74;&#x1F75;&#x1F76;&#x1F77;&#x1F78;&#x1F79;&#x1F7A;&#x1F7B;&#x1F7C;&#x1F7D;&#x1F80;&#x1F81;&#x1F82;&#x1F83;&#x1F84;&#x1F85;&#x1F86;&#x1F87;&#x1F90;&#x1F91;&#x1F92;&#x1F93;&#x1F94;&#x1F95;&#x1F96;&#x1F97;&#x1FA0;&#x1FA1;&#x1FA2;&#x1FA3;&#x1FA4;&#x1FA5;&#x1FA6;&#x1FA7;&#x1FB0;&#x1FB1;&#x1FB3;&#x1FBE;&#x1FC3;&#x1FD0;&#x1FD1;&#x1FE0;&#x1FE1;&#x1FE5;&#x1FF3;&#x2170;&#x2171;&#x2172;&#x2173;&#x2174;&#x2175;&#x2176;&#x2177;&#x2178;&#x2179;&#x217A;&#x217B;&#x217C;&#x217D;&#x217E;&#x217F;&#x24D0;&#x24D1;&#x24D2;&#x24D3;&#x24D4;&#x24D5;&#x24D6;&#x24D7;&#x24D8;&#x24D9;&#x24DA;&#x24DB;&#x24DC;&#x24DD;&#x24DE;&#x24DF;&#x24E0;&#x24E1;&#x24E2;&#x24E3;&#x24E4;&#x24E5;&#x24E6;&#x24E7;&#x24E8;&#x24E9;&#xFF41;&#xFF42;&#xFF43;&#xFF44;&#xFF45;&#xFF46;&#xFF47;&#xFF48;&#xFF49;&#xFF4A;&#xFF4B;&#xFF4C;&#xFF4D;&#xFF4E;&#xFF4F;&#xFF50;&#xFF51;&#xFF52;&#xFF53;&#xFF54;&#xFF55;&#xFF56;&#xFF57;&#xFF58;&#xFF59;&#xFF5A;&#x10428;&#x10429;&#x1042A;&#x1042B;&#x1042C;&#x1042D;&#x1042E;&#x1042F;&#x10430;&#x10431;&#x10432;&#x10433;&#x10434;&#x10435;&#x10436;&#x10437;&#x10438;&#x10439;&#x1043A;&#x1043B;&#x1043C;&#x1043D;&#x1043E;&#x1043F;&#x10440;&#x10441;&#x10442;&#x10443;&#x10444;&#x10445;&#x10446;&#x10447;&#x10448;&#x10449;&#x1044A;&#x1044B;&#x1044C;&#x1044D;'"/>

	<xsl:variable name="nome-requerente-pagamento-grus">
		<xsl:for-each select="//PG_NOME/CLCN_NOME/CLCN_DEPOSITANTE/*">
			<xsl:choose>
				<xsl:when test="local-name() = 'CLCN_ITEM_DEP_PF'">
					<xsl:if test="PNL_DEP_PF_NOME/CHB_DEP_PF_PAGAMENTO_GRU = $true">
						<xsl:value-of select="concat(PNL_DEP_PF_NOME/ED_DEP_PF_NOME, ' ',PNL_DEP_PF_NOME/ED_DEP_PF_SOBRENOME)"/>
					</xsl:if>
				</xsl:when>
				<xsl:when test="local-name() = 'CLCN_ITEM_DEP_PJ'">
					<xsl:if test="PNL_DEP_PJ_NOME/CHB_DEP_PJ_PAGAMENTO_GRU = $true">
						<xsl:value-of select="PNL_DEP_PJ_NOME/ED_DEP_PJ_EMPRESA"/>
					</xsl:if>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:variable>
	
	<!-- ******************************************************* -->
	
	<!-- Inicando processamento -->
	<xsl:template match="BRF109">
		<xsl:element name="requisicao">
			<xsl:attribute name="lang"><xsl:value-of select="$lingua" /></xsl:attribute>
			<xsl:attribute name="dtd-version">1.0</xsl:attribute>
			<xsl:attribute name="date-produced"><xsl:value-of select="substring(./@dateproduced,1,8)" /></xsl:attribute>
			<xsl:attribute name="ro">BR</xsl:attribute>
			<xsl:attribute name="produced-by"><xsl:value-of select="$applicant" /></xsl:attribute>
			<xsl:attribute name="formulario"><xsl:value-of select="@formtype" /></xsl:attribute>
			<xsl:attribute name="formulario-versao"><xsl:value-of select="@formversion" /></xsl:attribute>
			
			<!-- Informações do pedido -->
			<xsl:apply-templates select="PAGINAS/PG_PEDIDO"/>
			
			<!-- Informações dos participantes -->
			<xsl:apply-templates select="PAGINAS/PG_NOME"/>
			
			<!-- Informações das prioridades -->
			<xsl:apply-templates select="PAGINAS/PG_PRIORIDADE"/>
			
			<!-- Informações de acesso a material biológico -->
			<xsl:apply-templates select="PAGINAS/PG_MATERIAL_BIOLOGICO"/>
			
			<!-- Informações dos documentos -->
			<xsl:apply-templates select="PAGINAS/PG_DOCUMENTO"/>
			
			<!-- Informações das declarações -->
			<xsl:apply-templates select="PAGINAS/PG_DECLARACAO"/>
			
			<!-- Informações das assinaturas -->
			<!-- Somente cria o elemento. As informações serão adicionadas posteriormente -->
			<xsl:element name="signatories"/>
			
		</xsl:element>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Templates -->
	
	<!-- ******************************************************* -->
	
	<!-- Informações da petição -->
	<xsl:template match="PG_PEDIDO">
		<xsl:element name="file-reference-id"><xsl:value-of select="//@referencenumber" /></xsl:element>
		<xsl:element name="info-processo">
			<xsl:element name="tipo-processo">
				<xsl:choose>
					<xsl:when test="TPN_PEDIDO/TPN_NATUREZA/RB_PATENTE_INVENCAO = $true">
						<xsl:value-of select="$patente-de-invencao"/>										
					</xsl:when>
					
					<xsl:when test="TPN_PEDIDO/TPN_NATUREZA/RB_MODELO_UTILIDADE = $true">
						<xsl:value-of select="$modelo-de-utilidade"/>						
					</xsl:when>
					
					<xsl:when test="TPN_PEDIDO/TPN_NATUREZA/RB_CERTIFICADO_ADICAO = $true">
						<xsl:value-of select="$certificado-de-adicao"/>
					</xsl:when>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="titulo">
				<xsl:attribute name="lingua">
					<xsl:value-of select="$lingua" />
				</xsl:attribute>
				<xsl:value-of select="normalize-space(TPN_PEDIDO/ED_TITULO_INVENCAO)"/>
			</xsl:element>			
			
			<xsl:element name="processo">				
				<xsl:element name="tipo">
					<xsl:value-of select="TPN_PEDIDO/TPN_NATUREZA/CB_NUM_CERT_ADICAO"/>
				</xsl:element>
				<xsl:element name="tipo-extenso">
					<xsl:value-of select="TPN_PEDIDO/TPN_NATUREZA/CB_NUM_CERT_ADICAO/@content"/>
				</xsl:element>
				<xsl:element name="numero">
					<xsl:value-of select="TPN_PEDIDO/TPN_NATUREZA/ED_NUM_CERT_ADICAO"/>
				</xsl:element>
			</xsl:element>

			<xsl:element name="info-peticao">
				
				<info tipo="MOTIVO_IDADE" descricao="3.1 O depositante tem idade igual ou superior a 60 (sessenta) anos">
					<xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/RB_REQUER_MOTIVO_IDADE = $true))"/></info>
				
				<info tipo="MOTIVO_TERCEIROS" descricao="3.2 O objeto do pedido de patente está sendo reproduzido por terceiros sem a autorização do depositante.">
					<xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/RB_REQUER_MOTIVO_TERCEIROS = $true))"/></info>
				
				<info tipo="MOTIVO_FOMENTO" descricao="3.3 A concessão da patente é condição para obtenção de recursos financeiros de agências de fomento ou instituições de crédito oficiais nacionais, liberados sob forma de subvenção econômica, financiamento ou participação societária, ou originários de fundos mútuos de investimento, para exploração do respectivo produto ou processo.">
					<xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/RB_REQUER_MOTIVO_FOMENTO = $true))"/></info>
				
				<info tipo="MOTIVO_ACUSADO" descricao="3.4 O interessado está sendo acusado pelo depositante de reproduzir o objeto do pedido de patente sem sua autorização.">
					<xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/RB_REQUER_MOTIVO_ACUSADO = $true))"/></info>
				
				<info tipo="MOTIVO_SAUDE" descricao="3.5 O objeto do pedido de patente é diretamente relacionado ao diagnóstico, profilaxia e/ou tratamento da Síndrome da Imunodeficiência Adquirida (AIDS), Câncer e/ou de doenças negligenciadas, conforme disposto na Resolução que regulamenta o exame prioritário de pedidos de patente na área de Saúde.">
					<xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/RB_REQUER_MOTIVO_SAUDE = $true))"/></info>
				
				<info tipo="REQUER_13" descricao="Procuração"><xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/CB_REQUER_13 = $true))"/></info>
				<info tipo="REQUER_36" descricao="Cópia autenticada do Documento de Identidade ou Certidão de Nascimento"><xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/CB_REQUER_36 = $true))"/></info>
				<info tipo="REQUER_37" descricao="Provas que o objeto do pedido está sendo reproduzido por terceiros sem autorização"><xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/CB_REQUER_37 = $true))"/></info>
				<info tipo="REQUER_38" descricao="Cópia de Notificação Extrajudicial e/ou comprovação de recebimento"><xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/CB_REQUER_38 = $true))"/></info>
				<info tipo="REQUER_39" descricao="Cópia autenticada da solicitação de recurso financeiros a Agências de Fomento ou Instituições de crédito"><xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/CB_REQUER_39 = $true))"/></info>
				<info tipo="REQUER_40" descricao="Cópia autenticada do documento de condicionamento de recurso Financeiro"><xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/CB_REQUER_40 = $true))"/></info>
				<info tipo="REQUER_41" descricao="Comprovação de interposição de petição de subsídio ao exame técnico"><xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/CB_REQUER_41 = $true))"/></info>
				<info tipo="REQUER_OUTROS_31" descricao="Outros documentos"><xsl:value-of select="string(boolean(TPN_PEDIDO/TPN_REQUER/CB_REQUER_OUTROS = $true))"/></info>
				<info tipo="REQUER_OUTROS_MEM" descricao="Outros documentos"><xsl:value-of select="TPN_PEDIDO/TPN_REQUER/MEM_REQUER_OUTROS"/></info>
			
			</xsl:element>			
			
			<xsl:element name="GRUs">
				<!-- <xsl:call-template name="criar-grus"/> -->
				<xsl:call-template name="criar-grus-isentas"/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<!--
	<xsl:template name="criar-grus">
		<xsl:for-each select="//PG_DOCUMENTO/PC_DOCUMENTO/TS_OUTROSDOCUMENTOS/CLCN_ITEM_OUTROSDOCUMENTOS/PNL_GRU_entity">
			<xsl:if test="document/@documentcode = 'GRU'">
				<xsl:element name="gru">
					<xsl:attribute name="principal">					
						<xsl:choose>
							<xsl:when test="position() = 1">
								<xsl:value-of select="$true"/>						
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="$false"/>
							</xsl:otherwise>
						</xsl:choose>						 
					</xsl:attribute>
					<xsl:attribute name="servico">
						<xsl:value-of select="PNL_ITEM_GRU/CCBB_GRU_COD_SERVICO"/>
					</xsl:attribute>
					<xsl:attribute name="numero">
						<xsl:value-of select="PNL_ITEM_GRU/ED_GRU_NUM_GRU"/>
					</xsl:attribute>
					<xsl:attribute name="quantidade">
						<xsl:value-of select="PNL_ITEM_GRU/ED_GRU_QUANTIDADE"/>
					</xsl:attribute>
					<xsl:attribute name="rpi">
						<xsl:value-of select="PNL_ITEM_GRU/ED_GRU_NUM_RPI"/>
					</xsl:attribute>
					<xsl:attribute name="requerente">
						<xsl:choose>
							<xsl:when test="$nome-requerente-pagamento-grus = $vazio">
								<xsl:value-of select="PNL_ITEM_GRU/ED_GRU_NOME_DEP"/>						
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="$nome-requerente-pagamento-grus"/>
							</xsl:otherwise>
						</xsl:choose>					
					</xsl:attribute>
				</xsl:element>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	-->
	
	<xsl:template name="criar-grus-isentas">
		<xsl:for-each select="//PG_DOCUMENTO/PC_DOCUMENTO/TS_SERVICOS_ISENTOS/CLCN_GRU/CLCN_GRU_ISENTA/CLCN_ITEM_GRU_ISENTA">			
			<xsl:element name="gru">			
				
				<!--
				<xsl:choose>
					<xsl:when test="boolean($existeGruPaga = 0)">
						<xsl:attribute name="principal">					
							<xsl:choose>
								<xsl:when test="position() = 1">
									<xsl:value-of select="$true"/>						
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="$false"/>
								</xsl:otherwise>
							</xsl:choose>						 
						</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="principal">
							<xsl:value-of select="$false"/>
						</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				-->
				
				<xsl:attribute name="principal">					
					<xsl:choose>
						<xsl:when test="position() = 1">
							<xsl:value-of select="$true"/>						
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="$false"/>
						</xsl:otherwise>
					</xsl:choose>						 
				</xsl:attribute>
				<xsl:attribute name="isenta">					
					<xsl:value-of select="$true"/>						 
				</xsl:attribute>					
				<xsl:attribute name="servico">
					<xsl:value-of select="CCBB_GRU_ISENTA_COD_SERVICO"/>
				</xsl:attribute>
				<xsl:attribute name="numero">
					<xsl:value-of select="ED_GRU_ISENTA_NUM_GRU"/>
				</xsl:attribute>
				<xsl:attribute name="quantidade">
					<xsl:value-of select="'0'"/>
				</xsl:attribute>
				<xsl:attribute name="rpi">
					<xsl:value-of select="ED_GRU_ISENTA_NUM_RPI"/>
				</xsl:attribute>
				<xsl:attribute name="requerente">
					<xsl:choose>
						<xsl:when test="$nome-requerente-pagamento-grus = $vazio">
							<xsl:value-of select="ED_GRU_ISENTA_NOME_DEP"/>						
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="$nome-requerente-pagamento-grus"/>
						</xsl:otherwise>
					</xsl:choose>					
				</xsl:attribute>
			</xsl:element>			
		</xsl:for-each>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Identificação dos participantes -->
	<xsl:template match="PG_NOME">
		<xsl:element name="participantes">
			<xsl:apply-templates select="CLCN_NOME/CLCN_DEPOSITANTE" />
			<xsl:apply-templates select="CLCN_NOME/CLCN_PROCURADOR" />
			<xsl:apply-templates select="CLCN_NOME/CLCN_INVENTOR" />
		</xsl:element>
	</xsl:template>
	
	<!-- Requerentes -->
	<xsl:template match="CLCN_DEPOSITANTE">
		<xsl:element name="interessados">
			<xsl:apply-templates select="CLCN_ITEM_DEP_PJ"/>
			<xsl:apply-templates select="CLCN_ITEM_DEP_PF"/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="CLCN_ITEM_DEP_PJ">
		<xsl:element name="interessado">
			<xsl:attribute name="sequencia"><xsl:value-of select="@sequence" /></xsl:attribute>
			<xsl:attribute name="tipo">
				<xsl:value-of select="$applicant" />
			</xsl:attribute>
			<xsl:attribute name="publicidade"><xsl:value-of select="$public" /></xsl:attribute>
			<xsl:attribute name="tipo-legal"><xsl:value-of select="$pessoa-juridica" /></xsl:attribute>
			<xsl:attribute name="pme">
				<xsl:value-of select="string(boolean(PNL_MPE_DEP_PJ/CHB_MPE_DEP_PJ = $true))"/>
			</xsl:attribute>
			<xsl:attribute name="gru">
				<xsl:value-of select="string(boolean(PNL_DEP_PJ_NOME/CHB_DEP_PJ_PAGAMENTO_GRU = $true))"/>
			</xsl:attribute>
			
			<xsl:call-template name="montar-livro-enderecos">
				<xsl:with-param name="tipo" select="$pessoa-juridica" />
				<xsl:with-param name="nome" select="PNL_DEP_PJ_NOME/ED_DEP_PJ_EMPRESA" />
				<xsl:with-param name="cpf-cnpj" select="PNL_DEP_PJ_NOME/ED_DEP_PJ_CNPJ" />
				<xsl:with-param name="logradouro" select="PNL_DEP_PJ_ENDERECO/ED_DEP_PJ_ENDERECO" />
				<xsl:with-param name="cidade" select="PNL_DEP_PJ_ENDERECO/ED_DEP_PJ_CIDADE" />
				<xsl:with-param name="estado" select="PNL_DEP_PJ_ENDERECO/CCBB_DEP_PJ_ESTADO" />
				<xsl:with-param name="estado-extenso">
					<xsl:choose>
						<xsl:when test="normalize-space(PNL_DEP_PJ_ENDERECO/CCBB_DEP_PJ_ESTADO/@content) != $vazio">
							<xsl:value-of select="PNL_DEP_PJ_ENDERECO/CCBB_DEP_PJ_ESTADO/@content" />
						</xsl:when>
						<xsl:otherwise><xsl:value-of select="PNL_DEP_PJ_ENDERECO/ED_DEP_PJ_ESTADO" /></xsl:otherwise>
					</xsl:choose>
				</xsl:with-param>
				<xsl:with-param name="codigo-postal" select="PNL_DEP_PJ_ENDERECO/ED_DEP_PJ_CEP" />
				<xsl:with-param name="pais" select="PNL_DEP_PJ_ENDERECO/CCBB_DEP_PJ_PAIS" />
				<xsl:with-param name="pais-extenso" select="PNL_DEP_PJ_ENDERECO/CCBB_DEP_PJ_PAIS/@content" />
				<xsl:with-param name="telefone" select="PNL_DEP_PJ_CONTATO/ED_DEP_PJ_FONE" />
				<xsl:with-param name="fax" select="PNL_DEP_PJ_CONTATO/ED_DEP_PJ_FAX" />
				<xsl:with-param name="email" select="PNL_DEP_PJ_CONTATO/ED_DEP_PJ_EMAIL" />
			</xsl:call-template>
		</xsl:element>
	</xsl:template>

	<xsl:template match="CLCN_ITEM_DEP_PF">
		<xsl:element name="interessado">
			<xsl:attribute name="sequencia"><xsl:value-of select="@sequence" /></xsl:attribute>
			<xsl:attribute name="tipo">
				<xsl:choose>
					<xsl:when test="PNL_DEP_PF_INVENTOR_DEPOSITANTE/CHB_DEP_PF_INVENTOR_DEPOSITANTE = $true">
						<xsl:value-of select="$applicant-inventor" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$applicant" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="publicidade">
				<xsl:choose>
					<xsl:when test="PNL_DEP_PF_INVENTOR_DEPOSITANTE/CHB_DEP_PF_INVENTOR_DEPOSITANTE_ANONIMO = $true">
						<xsl:value-of select="$non-public" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$public" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="tipo-legal"><xsl:value-of select="$pessoa-fisica" /></xsl:attribute>
			<xsl:attribute name="gru">
				<xsl:value-of select="string(boolean(PNL_DEP_PF_NOME/CHB_DEP_PF_PAGAMENTO_GRU = $true))"/>
			</xsl:attribute>
			
			<xsl:call-template name="montar-livro-enderecos">
				<xsl:with-param name="tipo" select="$pessoa-fisica" />
				<xsl:with-param name="qualificacao" select="PNL_DEP_PF_NOME/ED_DEP_PF_TITULO" />
				<xsl:with-param name="nome" select="PNL_DEP_PF_NOME/ED_DEP_PF_NOME" />
				<xsl:with-param name="sobrenome" select="PNL_DEP_PF_NOME/ED_DEP_PF_SOBRENOME" />
				<xsl:with-param name="cpf-cnpj" select="PNL_DEP_PF_NOME/ED_DEP_PF_CPF" />
				<xsl:with-param name="logradouro" select="PNL_DEP_PF_ENDERECO/ED_DEP_PF_ENDERECO" />
				<xsl:with-param name="cidade" select="PNL_DEP_PF_ENDERECO/ED_DEP_PF_CIDADE" />
				<xsl:with-param name="estado" select="PNL_DEP_PF_ENDERECO/CCBB_DEP_PF_ESTADO" />
				<xsl:with-param name="estado-extenso">
					<xsl:choose>
						<xsl:when test="normalize-space(PNL_DEP_PF_ENDERECO/CCBB_DEP_PF_ESTADO/@content) != $vazio">
							<xsl:value-of select="PNL_DEP_PF_ENDERECO/CCBB_DEP_PF_ESTADO/@content" />
						</xsl:when>
						<xsl:otherwise><xsl:value-of select="PNL_DEP_PF_ENDERECO/ED_DEP_PF_ESTADO" /></xsl:otherwise>
					</xsl:choose>
				</xsl:with-param>
				<xsl:with-param name="codigo-postal" select="PNL_DEP_PF_ENDERECO/ED_DEP_PF_CEP" />
				<xsl:with-param name="pais" select="PNL_DEP_PF_ENDERECO/CCBB_DEP_PF_PAIS" />
				<xsl:with-param name="pais-extenso" select="PNL_DEP_PF_ENDERECO/CCBB_DEP_PF_PAIS/@content" />
				<xsl:with-param name="telefone" select="PNL_DEP_PF_CONTATO/ED_DEP_PF_FONE" />
				<xsl:with-param name="fax" select="PNL_DEP_PF_CONTATO/ED_DEP_PF_FAX" />
				<xsl:with-param name="email" select="PNL_DEP_PF_CONTATO/ED_DEP_PF_EMAIL" />
			</xsl:call-template>
		</xsl:element>
	</xsl:template>
	
	<!-- Procuradores -->
	<xsl:template match="CLCN_PROCURADOR">
		<xsl:element name="procuradores">
			<xsl:apply-templates select="CLCN_ITEM_PROCURADOR_PJ"/>
			<xsl:apply-templates select="CLCN_ITEM_PROCURADOR_PF"/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="CLCN_ITEM_PROCURADOR_PJ">
		<xsl:element name="procurador">
			<xsl:attribute name="sequencia"><xsl:value-of select="@sequence" /></xsl:attribute>
			<xsl:attribute name="tipo-legal"><xsl:value-of select="$pessoa-juridica" /></xsl:attribute>
			
			<xsl:call-template name="montar-livro-enderecos">
				<xsl:with-param name="tipo" select="$pessoa-juridica" />
				<xsl:with-param name="nome" select="PNL_PROCURADOR_PJ_NOME/ED_PROC_PJ_EMPRESA" />
				<xsl:with-param name="cpf-cnpj" select="PNL_PROCURADOR_PJ_NOME/ED_PROC_PJ_CNPJ" />
				<xsl:with-param name="logradouro" select="PNL_PROCURADOR_PJ_ENDERECO/ED_PROC_PJ_ENDERECO" />
				<xsl:with-param name="cidade" select="PNL_PROCURADOR_PJ_ENDERECO/ED_PROC_PJ_CIDADE" />
				<xsl:with-param name="estado" select="PNL_PROCURADOR_PJ_ENDERECO/CCBB_PROC_PJ_ESTADO" />
				<xsl:with-param name="estado-extenso" select="PNL_PROCURADOR_PJ_ENDERECO/CCBB_PROC_PJ_ESTADO/@content" />
				<xsl:with-param name="codigo-postal" select="PNL_PROCURADOR_PJ_ENDERECO/ED_PROC_PJ_CEP" />
				<xsl:with-param name="pais" select="PNL_PROCURADOR_PJ_ENDERECO/CCBB_PROC_PJ_PAIS" />
				<xsl:with-param name="pais-extenso" select="PNL_PROCURADOR_PJ_ENDERECO/CCBB_PROC_PJ_PAIS/@content" />
				<xsl:with-param name="telefone" select="PNL_PROCURADOR_PJ_CONTATO/ED_PROC_PJ_FONE" />
				<xsl:with-param name="fax" select="PNL_PROCURADOR_PJ_CONTATO/ED_PROC_PJ_FAX" />
				<xsl:with-param name="email" select="PNL_PROCURADOR_PJ_CONTATO/ED_PROC_PJ_EMAIL" />
			</xsl:call-template>
		</xsl:element>
	</xsl:template>

	<xsl:template match="CLCN_ITEM_PROCURADOR_PF">
		<xsl:element name="procurador">
			<xsl:attribute name="sequencia"><xsl:value-of select="@sequence" /></xsl:attribute>
			<xsl:attribute name="tipo-legal"><xsl:value-of select="$pessoa-fisica" /></xsl:attribute>
			
			<xsl:call-template name="montar-livro-enderecos">
				<xsl:with-param name="tipo" select="$pessoa-fisica" />
				<xsl:with-param name="qualificacao" select="PNL_PROCURADOR_PF_NOME/ED_PROC_PF_TITULO" />
				<xsl:with-param name="nome" select="PNL_PROCURADOR_PF_NOME/ED_PROC_PF_NOME" />
				<xsl:with-param name="sobrenome" select="PNL_PROCURADOR_PF_NOME/ED_PROC_PF_SOBRENOME" />
				<xsl:with-param name="cpf-cnpj" select="PNL_PROCURADOR_PF_NOME/ED_PROC_PF_CPF" />
				<xsl:with-param name="api" select="PNL_PROCURADOR_PF_NOME/ED_PROC_PF_API" />
				<xsl:with-param name="oab" select="PNL_PROCURADOR_PF_NOME/ED_PROC_PF_OAB" />
				<xsl:with-param name="logradouro" select="PNL_PROCURADOR_PF_ENDERECO/ED_PROC_PF_ENDERECO" />
				<xsl:with-param name="cidade" select="PNL_PROCURADOR_PF_ENDERECO/ED_PROC_PF_CIDADE" />
				<xsl:with-param name="estado" select="PNL_PROCURADOR_PF_ENDERECO/CCBB_PROC_PF_ESTADO" />
				<xsl:with-param name="estado-extenso" select="PNL_PROCURADOR_PF_ENDERECO/CCBB_PROC_PF_ESTADO/@content" />
				<xsl:with-param name="codigo-postal" select="PNL_PROCURADOR_PF_ENDERECO/ED_PROC_PF_CEP" />
				<xsl:with-param name="pais" select="PNL_PROCURADOR_PF_ENDERECO/CCBB_PROC_PF_PAIS" />
				<xsl:with-param name="pais-extenso" select="PNL_PROCURADOR_PF_ENDERECO/CCBB_PROC_PF_PAIS/@content" />
				<xsl:with-param name="telefone" select="PNL_PROCURADOR_PF_CONTATO/ED_PROC_PF_FONE" />
				<xsl:with-param name="fax" select="PNL_PROCURADOR_PF_CONTATO/ED_PROC_PF_FAX" />
				<xsl:with-param name="email" select="PNL_PROCURADOR_PF_CONTATO/ED_PROC_PF_EMAIL" />
			</xsl:call-template>
		</xsl:element>
	</xsl:template>
	
	<!-- Inventores -->
	<xsl:template match="CLCN_INVENTOR">
		<xsl:element name="inventores">
			<xsl:apply-templates select="CLCN_ITEM_INVENTOR"/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="CLCN_ITEM_INVENTOR">
		<xsl:element name="inventor">
			<xsl:attribute name="sequencia"><xsl:value-of select="@sequence" /></xsl:attribute>
			<xsl:attribute name="publicidade">
				<xsl:choose>
					<xsl:when test="CHB_INVENTOR_ANONIMATO = $true">
						<xsl:value-of select="$non-public" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$public" />
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="tipo-legal"><xsl:value-of select="$pessoa-fisica" /></xsl:attribute>
			
			<xsl:call-template name="montar-livro-enderecos">
				<xsl:with-param name="tipo" select="$pessoa-fisica" />
				<xsl:with-param name="qualificacao" select="PNL_INVENTOR_NOME/ED_INVENTOR_TITULO" />
				<xsl:with-param name="nome" select="PNL_INVENTOR_NOME/ED_INVENTOR_NOME" />
				<xsl:with-param name="sobrenome" select="PNL_INVENTOR_NOME/ED_INVENTOR_SOBRENOME" />
				<xsl:with-param name="cpf-cnpj" select="PNL_INVENTOR_NOME/ED_INVENTOR_CPF" />
				<xsl:with-param name="logradouro" select="PNL_INVENTOR_ENDERECO/ED_INVENTOR_ENDERECO" />
				<xsl:with-param name="cidade" select="PNL_INVENTOR_ENDERECO/ED_INVENTOR_CIDADE" />
				<xsl:with-param name="estado" select="PNL_INVENTOR_ENDERECO/CCBB_INVENTOR_ESTADO" />
				<xsl:with-param name="estado-extenso">
					<xsl:choose>
						<xsl:when test="normalize-space(PNL_INVENTOR_ENDERECO/CCBB_INVENTOR_ESTADO/@content) != $vazio">
							<xsl:value-of select="PNL_INVENTOR_ENDERECO/CCBB_INVENTOR_ESTADO/@content" />
						</xsl:when>
						<xsl:otherwise><xsl:value-of select="PNL_INVENTOR_ENDERECO/ED_INVENTOR_ESTADO" /></xsl:otherwise>
					</xsl:choose>
				</xsl:with-param>
				<xsl:with-param name="codigo-postal" select="PNL_INVENTOR_ENDERECO/ED_INVENTOR_CEP" />
				<xsl:with-param name="pais" select="PNL_INVENTOR_ENDERECO/CCBB_INVENTOR_PAIS" />
				<xsl:with-param name="pais-extenso" select="PNL_INVENTOR_ENDERECO/CCBB_INVENTOR_PAIS/@content" />
				<xsl:with-param name="telefone" select="PNL_INVENTOR_CONTATO/ED_INVENTOR_FONE" />
				<xsl:with-param name="fax" select="PNL_INVENTOR_CONTATO/ED_INVENTOR_FAX" />
				<xsl:with-param name="email" select="PNL_INVENTOR_CONTATO/ED_INVENTOR_EMAIL" />
			</xsl:call-template>
		</xsl:element>
	</xsl:template>
	
	<!-- Montar livro de endereços -->
	<xsl:template name="montar-livro-enderecos">
		<xsl:param name="tipo" />
		<xsl:param name="qualificacao" />
		<xsl:param name="nome" />
		<xsl:param name="sobrenome" />
		<xsl:param name="cpf-cnpj" />
		<xsl:param name="api" />
		<xsl:param name="oab" />
		<xsl:param name="logradouro" />
		<xsl:param name="cidade" />
		<xsl:param name="estado" />
		<xsl:param name="estado-extenso" />
		<xsl:param name="codigo-postal" />
		<xsl:param name="pais" />
		<xsl:param name="pais-extenso" />
		<xsl:param name="telefone" />
		<xsl:param name="fax" />
		<xsl:param name="email" />
		
		<xsl:element name="livro-endereco">
			<xsl:attribute name="lingua"><xsl:value-of select="$lingua"/></xsl:attribute>
			
			<xsl:choose>
				<xsl:when test="$tipo = $pessoa-juridica">
					<xsl:element name="nome-organizacao"><xsl:value-of select="$nome"/></xsl:element>
				</xsl:when>
				<xsl:otherwise>
					<xsl:element name="qualificacao"><xsl:value-of select="$qualificacao"/></xsl:element>
					<xsl:element name="nome"><xsl:value-of select="$nome"/></xsl:element>
					<xsl:element name="sobrenome"><xsl:value-of select="$sobrenome"/></xsl:element>
				</xsl:otherwise>
			</xsl:choose>
			
			<xsl:element name="cpf-cnpj"><xsl:value-of select="$cpf-cnpj"/></xsl:element>
			<xsl:if test="$tipo = $pessoa-fisica">
				<xsl:if test="$api"><xsl:element name="api"><xsl:value-of select="$api"/></xsl:element></xsl:if>
				<xsl:if test="$oab"><xsl:element name="oab"><xsl:value-of select="$oab"/></xsl:element></xsl:if>
			</xsl:if>
			
			<xsl:element name="endereco">
				<xsl:element name="logradouro"><xsl:value-of select="$logradouro"/></xsl:element>
				<xsl:element name="cidade"><xsl:value-of select="$cidade"/></xsl:element>
				<xsl:element name="estado"><xsl:value-of select="$estado"/></xsl:element>
				<xsl:element name="estado-extenso"><xsl:value-of select="$estado-extenso"/></xsl:element>
				<xsl:element name="codigo-postal"><xsl:value-of select="$codigo-postal"/></xsl:element>
				<xsl:element name="pais"><xsl:value-of select="$pais"/></xsl:element>
				<xsl:element name="pais-extenso"><xsl:value-of select="$pais-extenso"/></xsl:element>
			</xsl:element>	
			
			<xsl:choose>
				<xsl:when test="$pais = 'BR'">
				
					<xsl:choose>
						<xsl:when test="$telefone = $vazio">
							<xsl:element name="telefone"><xsl:value-of select="$telefone"/></xsl:element>
						</xsl:when>
						<xsl:otherwise>
							<xsl:element name="telefone"><xsl:value-of select="concat('+55(', substring($telefone,1,2), ')', substring($telefone,3, string-length($telefone) ) )"/></xsl:element>
						</xsl:otherwise>
					</xsl:choose>
					
					<xsl:choose>
						<xsl:when test="$fax = $vazio">
							<xsl:element name="fax"><xsl:value-of select="$fax"/></xsl:element>
						</xsl:when>
						<xsl:otherwise>
							<xsl:element name="fax"><xsl:value-of select="concat('+55(', substring($fax,1,2), ')', substring($fax,3, string-length($fax) ) )"/></xsl:element>
						</xsl:otherwise>
					</xsl:choose>
					
				</xsl:when>
				<xsl:otherwise>
					
					<xsl:choose>
						<xsl:when test="$telefone = $vazio">
							<xsl:element name="telefone"><xsl:value-of select="$telefone"/></xsl:element>
						</xsl:when>
						<xsl:otherwise>
							<xsl:element name="telefone"><xsl:value-of select="concat('+', substring($telefone,1, string-length($telefone) ) )"/></xsl:element>
						</xsl:otherwise>
					</xsl:choose>
					
					<xsl:choose>
						<xsl:when test="$fax = $vazio">
							<xsl:element name="fax"><xsl:value-of select="$fax"/></xsl:element>
						</xsl:when>
						<xsl:otherwise>
							<xsl:element name="fax"><xsl:value-of select="concat('+', substring($fax,1, string-length($fax) ) )"/></xsl:element>
						</xsl:otherwise>
					</xsl:choose>

				</xsl:otherwise>
			</xsl:choose>		
			
			<xsl:element name="email"><xsl:value-of select="$email"/></xsl:element>
			
		</xsl:element>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Preparação das prioridades -->
	<xsl:template match="PG_PRIORIDADE">
		<xsl:element name="prioridades">
			<xsl:call-template name="criar-declaracao">
				<xsl:with-param name="sequencia">prioridade</xsl:with-param>
				<xsl:with-param name="texto">Declaro que os dados fornecidos no presente formul&#225;rio s&#227;o id&#234;nticos ao da certid&#227;o de dep&#243;sito ou documento equivalente do pedido cuja prioridade est&#225; sendo reivindicada.</xsl:with-param>
				<xsl:with-param name="valor"><xsl:value-of select="string(boolean(TPN_DECLARA_PRIORIDADE/CB_DECLARA_PRIORIDADE = $true))"/></xsl:with-param>
			</xsl:call-template>
			
			<xsl:apply-templates select="CLCN_ITEM_PRIORIDADE" />
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="CLCN_ITEM_PRIORIDADE">
		<xsl:apply-templates select="PNL_PRIORIDADE_INTERNA_entity"/>
		<xsl:apply-templates select="PNL_PRIORIDADE_UNIONISTA_entity"/>
		<xsl:apply-templates select="PNL_PRIORIDADE_UNIONISTA_TRADUC_entity"/>
	</xsl:template>
	
	<xsl:template match="PNL_PRIORIDADE_INTERNA_entity">
		<xsl:call-template name="montar-prioridade">
			<xsl:with-param name="pais-escritorio" select="PNL_ITEM_PRIORIDADE_INTERNA/PNL_PRIORIDADE_INTERNA_INFO/ED_PRIORIDADE_INTERNA_ESCRITORIO"/>
			<xsl:with-param name="tipo" select="PNL_ITEM_PRIORIDADE_INTERNA/PNL_PRIORIDADE_INTERNA_INFO/TPN_PRIORIDADE_INTERNA_NUMERO/CB_PRIORIDADE_INTERNA_NUMERO"/>
			<xsl:with-param name="tipo-extenso" select="PNL_ITEM_PRIORIDADE_INTERNA/PNL_PRIORIDADE_INTERNA_INFO/TPN_PRIORIDADE_INTERNA_NUMERO/CB_PRIORIDADE_INTERNA_NUMERO/@content"/>
			<xsl:with-param name="numero" select="PNL_ITEM_PRIORIDADE_INTERNA/PNL_PRIORIDADE_INTERNA_INFO/TPN_PRIORIDADE_INTERNA_NUMERO/ED_PRIORIDADE_INTERNA_NUMERO"/>
			<xsl:with-param name="data" select="PNL_ITEM_PRIORIDADE_INTERNA/PNL_PRIORIDADE_INTERNA_INFO/EDD_PRIORIDADE_INTERNA_DATA"/>
			<xsl:with-param name="origem" select="."/>
		</xsl:call-template>
	</xsl:template>
	
	<xsl:template match="PNL_PRIORIDADE_UNIONISTA_entity">
		<xsl:call-template name="montar-prioridade">
			<xsl:with-param name="pais-escritorio" select="PNL_ITEM_PRIORIDADE_UNIONISTA/PNL_PRIORIDADE_UNIONISTA_INFO/CCBB_PRIORIDADE_UNIONISTA_ESCRITORIO"/>
			<xsl:with-param name="tipo" select="PNL_ITEM_PRIORIDADE_UNIONISTA/PNL_PRIORIDADE_UNIONISTA_INFO/TPN_PRIORIDADE_UNIONISTA_BR_NUMERO/CB_PRIORIDADE_UNIONISTA_BR_NUMERO"/>
			<xsl:with-param name="tipo-extenso" select="PNL_ITEM_PRIORIDADE_UNIONISTA/PNL_PRIORIDADE_UNIONISTA_INFO/TPN_PRIORIDADE_UNIONISTA_BR_NUMERO/CB_PRIORIDADE_UNIONISTA_BR_NUMERO/@content"/>
			<xsl:with-param name="numero">
				<xsl:choose>
					<xsl:when test="PNL_ITEM_PRIORIDADE_UNIONISTA/PNL_PRIORIDADE_UNIONISTA_INFO/CCBB_PRIORIDADE_UNIONISTA_ESCRITORIO = 'BR'">
						<xsl:value-of select="PNL_ITEM_PRIORIDADE_UNIONISTA/PNL_PRIORIDADE_UNIONISTA_INFO/TPN_PRIORIDADE_UNIONISTA_BR_NUMERO/ED_PRIORIDADE_UNIONISTA_BR_NUMERO"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="PNL_ITEM_PRIORIDADE_UNIONISTA/PNL_PRIORIDADE_UNIONISTA_INFO/ED_PRIORIDADE_UNIONISTA_NUMERO"/>
					</xsl:otherwise>
				</xsl:choose>			
			</xsl:with-param>			
			<xsl:with-param name="data" select="PNL_ITEM_PRIORIDADE_UNIONISTA/PNL_PRIORIDADE_UNIONISTA_INFO/EDD_PRIORIDADE_UNIONISTA_DATA"/>
			<xsl:with-param name="origem" select="."/>
		</xsl:call-template>
	</xsl:template>
	
	<xsl:template match="PNL_PRIORIDADE_UNIONISTA_TRADUC_entity">
		<xsl:call-template name="montar-prioridade">
			<xsl:with-param name="pais-escritorio" select="PNL_ITEM_PRIORIDADE_UNIONISTA_TRADUC/PNL_PRIORIDADE_UNIONISTA_TRADUC_INFO/CCBB_PRIORIDADE_UNIONISTA_TRADUC_ESCRITORIO"/>
			<xsl:with-param name="tipo" select="PNL_ITEM_PRIORIDADE_UNIONISTA_TRADUC/PNL_PRIORIDADE_UNIONISTA_TRADUC_INFO/TPN_PRIORIDADE_UNIONISTA_TRADUC_NUMERO/CB_PRIORIDADE_UNIONISTA_TRADUC_NUMERO"/>
			<xsl:with-param name="tipo-extenso" select="PNL_ITEM_PRIORIDADE_UNIONISTA_TRADUC/PNL_PRIORIDADE_UNIONISTA_TRADUC_INFO/TPN_PRIORIDADE_UNIONISTA_TRADUC_NUMERO/CB_PRIORIDADE_UNIONISTA_TRADUC_NUMERO/@content"/>
			<xsl:with-param name="numero" select="PNL_ITEM_PRIORIDADE_UNIONISTA_TRADUC/PNL_PRIORIDADE_UNIONISTA_TRADUC_INFO/ED_PRIORIDADE_UNIONISTA_TRADUC_NUMERO"/>
			<xsl:with-param name="data" select="PNL_ITEM_PRIORIDADE_UNIONISTA_TRADUC/PNL_PRIORIDADE_UNIONISTA_TRADUC_INFO/EDD_PRIORIDADE_UNIONISTA_TRADUC_DATA"/>
			<xsl:with-param name="origem" select="."/>
		</xsl:call-template>
	</xsl:template>
	
	<xsl:template name="montar-prioridade">
		<xsl:param name="pais-escritorio"/>
		<xsl:param name="tipo"/>
		<xsl:param name="tipo-extenso"/>
		<xsl:param name="numero"/>		
		<xsl:param name="data"/>
		<xsl:param name="origem"/>
		
		<xsl:variable name="tipo-prioridade" select="substring-before(substring-after(local-name($origem), 'PNL_PRIORIDADE_'), '_entity')"/>
		<xsl:variable name="declaracao-traducao" select="PNL_ITEM_PRIORIDADE_UNIONISTA_TRADUC/PNL_PRIORIDADE_DECLARACAO/CHB_PRIORIDADE_DECLARACAO"/>
		
		<xsl:element name="prioridade">
			<xsl:attribute name="sequencia"><xsl:value-of select="$origem/@sequence" /></xsl:attribute>
			<xsl:attribute name="interna">
				<xsl:value-of select="string(boolean(normalize-space($tipo-prioridade) = $prioridade-interna))"/>
			</xsl:attribute>
			
			<xsl:choose>
				<xsl:when test="$tipo-prioridade = $prioridade-interna">
					<xsl:element name="pais-escritorio"><xsl:value-of select="'BR'"/></xsl:element>
					<xsl:element name="pais-escritorio-extenso"><xsl:value-of select="'Instituto Nacional da Propriedade Industrial (INPI)'"/></xsl:element>
				</xsl:when>
				<xsl:otherwise>
					<xsl:element name="pais-escritorio"><xsl:value-of select="$pais-escritorio"/></xsl:element>
					<xsl:element name="pais-escritorio-extenso"><xsl:value-of select="$pais-escritorio/@content"/></xsl:element>					
				</xsl:otherwise>
			</xsl:choose>		
			
			<xsl:element name="tipo">
				<xsl:value-of select="$tipo"/>
			</xsl:element>
			
			<xsl:element name="tipo-extenso">
				<xsl:value-of select="$tipo-extenso"/>
			</xsl:element>
			
			<xsl:element name="numero">
				<xsl:call-template name="str-to-upper">
					<xsl:with-param name="texto" select="$numero" />
				</xsl:call-template>
			</xsl:element>
			
			
			<xsl:element name="data">
				<xsl:choose>
					<xsl:when test="$data = '18991230'"><xsl:value-of select="$vazio"/></xsl:when>
					<xsl:otherwise><xsl:value-of select="$data"/></xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:call-template name="criar-documento">
				<xsl:with-param name="origem" select="$origem"/>
			</xsl:call-template>
			<xsl:if test="boolean(normalize-space($tipo-prioridade) = $prioridade-unionista-trad)">
				<xsl:element name="declaracao-traducao">
					<xsl:value-of select="string(boolean(normalize-space($declaracao-traducao) = $true))"/>
				</xsl:element>
			</xsl:if>
		</xsl:element>
		
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Preparação do acesso a material biológico -->
	<xsl:template match="PG_MATERIAL_BIOLOGICO">
		<xsl:element name="acessos-mat-biologico">
			<xsl:apply-templates select="CLCN_MATERIAL_BIOLOGICO/CLCN_ITEM_MATERIAL_BIOLOGICO" />
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="CLCN_ITEM_MATERIAL_BIOLOGICO">
		<xsl:element name="acesso">
			<xsl:attribute name="sequencia"><xsl:value-of select="@sequence" /></xsl:attribute>
			
			<xsl:element name="identificacao">
				<xsl:value-of select="PNL_MATERIAL_BIO_DETALHES/ED_MATERIAL_BIO_IDENTIFICACAO" />
			</xsl:element>
			<xsl:element name="centro-depositario">
				<xsl:value-of select="PNL_MATERIAL_BIO_DETALHES/CCBB_MATERIAL_BIO_INSTITUICAO" />
			</xsl:element>
			<xsl:element name="centro-depositario-extenso">
				<xsl:value-of select="PNL_MATERIAL_BIO_DETALHES/ED_MATERIAL_BIO_NOME_INSTITUICAO" />
			</xsl:element>
			<xsl:element name="endereco-centro-depositario">
				<xsl:value-of select="PNL_MATERIAL_BIO_DETALHES/ME_MATERIAL_BIOLOGICO_INSTITUICAO_ENDERECO"/>
			</xsl:element>
			<xsl:element name="numero-adesao">
				<xsl:value-of select="PNL_MATERIAL_BIO_DETALHES/ED_MATERIAL_BIO_NUM_ADESAO"/>
			</xsl:element>
			
			<xsl:call-template name="criar-documento">
				<xsl:with-param name="origem" select="PNL_MATERIAL_BIO_RECIBO"/>
			</xsl:call-template>
		</xsl:element>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Preparação dos documentos -->
	<xsl:template match="PG_DOCUMENTO">
		<xsl:element name="documentos">
			<xsl:call-template name="criar-declaracao">
				<xsl:with-param name="sequencia">pdf-txt</xsl:with-param>
				<xsl:with-param name="texto">Declaro que todos os documentos de especifica&#231;&#227;o em formato texto t&#234;m conte&#250;do igual ao dos documentos de especifica&#231;&#227;o anexados em formato PDF. Caso haja alguma diverg&#234;ncia entre os arquivos PDF e TXT (texto), ser&#225; considerado o conte&#250;do do arquivo PDF para fins de exame.</xsl:with-param>
				<xsl:with-param name="valor"><xsl:value-of select="string(boolean(PC_DOCUMENTO/TS_ESPECIFICACAO_OPCAO/PNL_DECLARA_TXT_IGUAL_PDF/CB_DECLARA_TXT_IGUAL_PDF = $true))"/></xsl:with-param>
			</xsl:call-template>
			
			<xsl:apply-templates select="PC_DOCUMENTO/TS_ESPECIFICACAO/CLCN_ESPECIFICACAO" />
			<xsl:apply-templates select="PC_DOCUMENTO/TS_ESPECIFICACAO_OPCAO/PNL_ESPECIFICACAO_OPCAO/CLCN_ITEM_ESPECIFICACAO_OPCAO" />
			<xsl:apply-templates select="PC_DOCUMENTO/TS_OUTROSDOCUMENTOS/CLCN_ITEM_OUTROSDOCUMENTOS" />
			<xsl:apply-templates select="PC_DOCUMENTO/TS_LISTAGEMSEQUENCIA/PNL_LISTAGEM_SEQUENCIA" />
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="CLCN_ESPECIFICACAO">
		<xsl:for-each select="PNL_ESPECIFICACAO_entity">
			<xsl:call-template name="criar-documento">
				<xsl:with-param name="origem" select="."/>
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="CLCN_ITEM_ESPECIFICACAO_OPCAO">
		<xsl:call-template name="criar-documento">
			<xsl:with-param name="origem" select="PNL_DESCRITIVO_TXT_entity"/>
		</xsl:call-template>
		<xsl:call-template name="criar-documento">
			<xsl:with-param name="origem" select="PNL_REIVINDICACAO_TXT_entity"/>
		</xsl:call-template>
		<xsl:call-template name="criar-documento">
			<xsl:with-param name="origem" select="PNL_RESUMO_TXT_entity"/>
		</xsl:call-template>
	</xsl:template>
	
	<xsl:template match="CLCN_ITEM_OUTROSDOCUMENTOS">
		
		<xsl:for-each select="PNL_GRU_entity">
			<xsl:call-template name="criar-documento">
				<xsl:with-param name="origem" select="."/>				
			</xsl:call-template>
		</xsl:for-each>	
		
		<xsl:for-each select="PNL_DOCS_GERAIS_entity">
			<xsl:call-template name="criar-documento">
				<xsl:with-param name="origem" select="."/>
			</xsl:call-template>
		</xsl:for-each>
		
		<xsl:for-each select="PNL_OUTRO_DOC_entity">
			<xsl:call-template name="criar-documento">
				<xsl:with-param name="origem" select="."/>
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="PNL_LISTAGEM_SEQUENCIA">
		<xsl:call-template name="criar-documento">
			<xsl:with-param name="origem" select="PNL_LISTAGEM_SEQUENCIA_ASCII"/>
		</xsl:call-template>
		<xsl:call-template name="criar-documento">
			<xsl:with-param name="origem" select="PNL_CODIGO_CONTROLE_PDF"/>
		</xsl:call-template>
		<xsl:call-template name="criar-documento">
			<xsl:with-param name="origem" select="PNL_CODIGO_CONTROLE_XML"/>
		</xsl:call-template>
		<xsl:call-template name="criar-documento">
			<xsl:with-param name="origem" select="PNL_LISTAGEM_SEQUENCIA_RESOLUCAO"/>
		</xsl:call-template>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Preparação dos documentos -->
	<xsl:template match="PG_DECLARACAO">
		<xsl:element name="declaracoes">
			<xsl:call-template name="criar-declaracao">
				<xsl:with-param name="sequencia">01</xsl:with-param>
				<xsl:with-param name="texto">Declaro que assumo total responsabilidade sobre a integridade, a legibilidade e a fidedignidade dos documentos enviados por meio eletr&#244;nico, bem como sua adequa&#231;&#227;o aos requisitos t&#233;cnicos exig&#237;veis para seu correto processamento pelo sistema e-Patentes/Dep&#243;sito.</xsl:with-param> 
				<xsl:with-param name="valor"><xsl:value-of select="string(boolean(PC_DECLARACAO/CHB_DECLARACAO_01 = $true))"/></xsl:with-param>
			</xsl:call-template>
			<xsl:call-template name="criar-declaracao">
				<xsl:with-param name="sequencia">02</xsl:with-param>
				<xsl:with-param name="texto">Declaro ci&#234;ncia de que o envio dos documentos ao INPI s&#243; &#233; considerado concretizado ap&#243;s esses serem protocolados e um recibo com assinatura digital do INPI for entregue eletronicamente aos usu&#225;rios dos servi&#231;os. Em qualquer situa&#231;&#227;o de d&#250;vida, o usu&#225;rio dever&#225; apresentar esse recibo.</xsl:with-param> 
				<xsl:with-param name="valor"><xsl:value-of select="string(boolean(PC_DECLARACAO/CHB_DECLARACAO_02 = $true))"/></xsl:with-param>
			</xsl:call-template>
			<xsl:call-template name="criar-declaracao">
				<xsl:with-param name="sequencia">03</xsl:with-param>
				<xsl:with-param name="texto">Declaro ci&#234;ncia de que o INPI n&#227;o &#233; respons&#225;vel por qualquer perda resultante de falhas externas ao &#243;rg&#227;o ou quaisquer eventualidades n&#227;o relacionadas a problemas de infraestrutura do INPI que impe&#231;am o dep&#243;sito ou o peticionamento eletr&#244;nico.</xsl:with-param> 
				<xsl:with-param name="valor"><xsl:value-of select="string(boolean(PC_DECLARACAO/CHB_DECLARACAO_03 = $true))"/></xsl:with-param>
			</xsl:call-template>
			<xsl:call-template name="criar-declaracao">
				<xsl:with-param name="sequencia">04</xsl:with-param>
				<xsl:with-param name="texto">Declaro ci&#234;ncia de que os documentos enviados por formul&#225;rios eletr&#244;nicos ser&#227;o considerados recebidos pelo INPI nas exatas data e hora indicadas pelo provedor do INPI, constantes no recibo eletr&#244;nico expedido ao usu&#225;rio.</xsl:with-param> 
				<xsl:with-param name="valor"><xsl:value-of select="string(boolean(PC_DECLARACAO/CHB_DECLARACAO_04 = $true))"/></xsl:with-param>
			</xsl:call-template>
			<xsl:call-template name="criar-declaracao">
				<xsl:with-param name="sequencia">05</xsl:with-param>
				<xsl:with-param name="texto">Declaro ci&#234;ncia de que o dep&#243;sito ou o peticionamento eletr&#244;nico n&#227;o eliminam a necessidade da realiza&#231;&#227;o do exame formal e/ou de m&#233;rito nos dep&#243;sitos de pedidos de patente ou nas peti&#231;&#245;es, n&#227;o sendo suficiente para garantir o cumprimento de todas as formalidades e exig&#234;ncias t&#233;cnicas.</xsl:with-param>
				<xsl:with-param name="valor"><xsl:value-of select="string(boolean(PC_DECLARACAO/CHB_DECLARACAO_05 = $true))"/></xsl:with-param>
			</xsl:call-template>
			<xsl:call-template name="criar-declaracao">
				<xsl:with-param name="sequencia">06</xsl:with-param>
				<xsl:with-param name="texto">Declaro que me comprometo a n&#227;o realizar qualquer modifica&#231;&#227;o capaz de alterar os arquivos automaticamente criados pelo sistema e-Patentes/Dep&#243;sito, tendo ci&#234;ncia de que qualquer altera&#231;&#227;o poder&#225; invalidar o dep&#243;sito ou o peticionamento eletr&#244;nico.</xsl:with-param>
				<xsl:with-param name="valor"><xsl:value-of select="string(boolean(PC_DECLARACAO/CHB_DECLARACAO_06 = $true))"/></xsl:with-param>
			</xsl:call-template>
			<xsl:call-template name="criar-declaracao">
				<xsl:with-param name="sequencia">07</xsl:with-param>
				<xsl:with-param name="texto">Declaro ci&#234;ncia de que eventuais exig&#234;ncias formais e/ou t&#233;cnicas ser&#227;o posteriormente publicadas na Revista Eletr&#244;nica da Propriedade Industrial (RPI) disponibilizada no portal do INPI.</xsl:with-param>
				<xsl:with-param name="valor"><xsl:value-of select="string(boolean(PC_DECLARACAO/CHB_DECLARACAO_07 = $true))"/></xsl:with-param>
			</xsl:call-template>
			<xsl:call-template name="criar-declaracao">
				<xsl:with-param name="sequencia">08</xsl:with-param>
				<xsl:with-param name="texto">Declaro, sob penas da Lei, que todas as informa&#231;&#245;es prestadas neste formul&#225;rio eletr&#244;nico s&#227;o completas e verdadeiras.</xsl:with-param>
				<xsl:with-param name="valor"><xsl:value-of select="string(boolean(PC_DECLARACAO/CHB_DECLARACAO_08 = $true))"/></xsl:with-param>
			</xsl:call-template>
			
		</xsl:element>
	</xsl:template>
	
	<!-- ******************************************************* -->
	
	<!-- Método para montagem das declarações -->
	<xsl:template name="criar-declaracao">
		<xsl:param name="sequencia"/>
		<xsl:param name="texto"/>
		<xsl:param name="valor"/>
		
		<xsl:element name="declaracao-{$sequencia}">
			<xsl:attribute name="texto"><xsl:value-of select="$texto"/></xsl:attribute>
			
			<xsl:value-of select="$valor"/>
		</xsl:element>
	</xsl:template>
	
	<!-- Métodos para montagem de file-list -->
	<xsl:template name="criar-documento">
		<xsl:param name="origem"/>
		
		<xsl:variable name="num-docs" select="count($origem/document)" />
		
		<xsl:if test="$num-docs &gt; 0">
			<xsl:element name="documento">
				<xsl:attribute name="tipo">
					<xsl:value-of select="$origem/document/@filetype"/>
				</xsl:attribute>		
				
				<xsl:attribute name="doc-code">				
					<xsl:choose>
						<xsl:when test="$origem/document/@documentcode = 'INDEX-BR'">
							<xsl:value-of select="$origem/PNL_ITEM_DOCS_GERAIS/ED_AUX_COD_SEC"/>
						</xsl:when>
						
						<xsl:otherwise>
							<xsl:variable name="doc-code">
								<xsl:call-template name="obter-doc-code-final">
									<xsl:with-param name="doc-code" select="$origem/document/@documentcode" />
								</xsl:call-template>
							</xsl:variable>				
							<xsl:value-of select="$doc-code"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
				
				<xsl:if test="$origem/PNL_ITEM_DOCS_GERAIS/CCBB_TIPO_DOCUMENTO != $vazio">
					<xsl:attribute name="doc-code-int">					
						<xsl:value-of select="$origem/PNL_ITEM_DOCS_GERAIS/CCBB_TIPO_DOCUMENTO"/>
					</xsl:attribute>
					
					<xsl:attribute name="doc-code-sec">	
						<xsl:value-of select="'INDEX-BR'"/>	
					</xsl:attribute>					
				</xsl:if>

				<xsl:attribute name="total-paginas">
					<xsl:value-of select="$origem/document/@pagecount"/>
				</xsl:attribute>
				<xsl:attribute name="nome-original">
					<xsl:value-of select="$origem/document/@sourcefilename"/>
				</xsl:attribute>
				<xsl:attribute name="nome-deposito">
					<xsl:value-of select="$origem/document/@filename"/>
				</xsl:attribute>
				
				<xsl:if test="$origem/PNL_ITEM_OUTRO_DOC/MEM_OUTRO_DOC_DETALHE">
					<xsl:attribute name="observacoes">
						<xsl:value-of select="$origem/PNL_ITEM_OUTRO_DOC/MEM_OUTRO_DOC_DETALHE"/>
					</xsl:attribute>
				</xsl:if>
				
				<xsl:if test="$origem/document/@documentcode = 'GRU'">
					<xsl:attribute name="gru-servico">
						<xsl:value-of select="$origem/PNL_ITEM_GRU/CCBB_GRU_COD_SERVICO"/>
					</xsl:attribute>
					<xsl:attribute name="gru-numero">
						<xsl:value-of select="$origem/PNL_ITEM_GRU/ED_GRU_NUM_GRU"/>
					</xsl:attribute>
					<xsl:attribute name="gru-quantidade">
						<xsl:value-of select="$origem/PNL_ITEM_GRU/ED_GRU_QUANTIDADE"/>
					</xsl:attribute>
					<xsl:attribute name="gru-rpi">
						<xsl:value-of select="$origem/PNL_ITEM_GRU/ED_GRU_NUM_RPI"/>
					</xsl:attribute>
					<xsl:attribute name="gru-requerente">
						<xsl:choose>
							<xsl:when test="$nome-requerente-pagamento-grus = $vazio">
								<xsl:value-of select="$origem/PNL_ITEM_GRU/ED_GRU_NOME_DEP"/>						
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="$nome-requerente-pagamento-grus"/>
							</xsl:otherwise>
						</xsl:choose>					
					</xsl:attribute>					
					<xsl:attribute name="gru-principal">
						<xsl:choose>
							<xsl:when test="position() = 1">
								<xsl:value-of select="$true"/>						
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="$false"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute>
				</xsl:if>			

				<xsl:if test="$origem/document/@documentcode = 'DESENHOSMOD'">
					<xsl:attribute name="numero-de-desenhos">
						<xsl:value-of select="$origem/CLCN_ITEM_DESENHO/TPN_DESENHO/ED_DESENHO_NUM_DESENHOS"/>
					</xsl:attribute>
					<xsl:attribute name="desenho-para-resumo">
						<xsl:value-of select="$origem/CLCN_ITEM_DESENHO/TPN_DESENHO/ED_FIGURA_RESUMO"/>
					</xsl:attribute>
					<xsl:attribute name="desenhos-coloridos">
						<xsl:value-of select="$origem/CLCN_ITEM_DESENHO/TPN_DESENHO/CB_DESENHO_COLORIDO"/>
						
					</xsl:attribute>
				</xsl:if>
				
				<xsl:if test="($num-docs &gt; 1) or ($doc-code = $ESPEC-BR)">
					<xsl:for-each select="document">
						<xsl:call-template name="criar-secao">
							<xsl:with-param name="secao" select="."/>
						</xsl:call-template>
					</xsl:for-each>
				</xsl:if>
			</xsl:element>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="criar-secao">
		<xsl:param name="secao"/>
		
		<xsl:element name="secao">
			<xsl:attribute name="doc-code"><xsl:value-of select="$secao/@documentcode"/></xsl:attribute>
			<xsl:attribute name="pagina-inicial"><xsl:value-of select="$secao/@frompage"/></xsl:attribute>
			<xsl:attribute name="pagina-final"><xsl:value-of select="$secao/@topage"/></xsl:attribute>
			<xsl:attribute name="contagem-paginas">
				<xsl:if test="normalize-space($secao/@topage) != $vazio">
					<xsl:if test="normalize-space($secao/@frompage) != $vazio">
						<xsl:value-of select="$secao/@topage - $secao/@frompage + 1"/>
					</xsl:if>
				</xsl:if>
			</xsl:attribute>
		</xsl:element>
	</xsl:template>
	
	<xsl:template name="obter-doc-code-final">
		<xsl:param name="doc-code"/>
		
		<xsl:choose>
			<xsl:when test="$doc-code = 'RELDESCMODIF'"><xsl:value-of select="$ESPEC-BR"/></xsl:when>
			<xsl:when test="$doc-code = 'REIVINDMODIF'"><xsl:value-of select="$ESPEC-BR"/></xsl:when>
			<xsl:when test="$doc-code = 'RESUMOMODIF'"><xsl:value-of select="$ESPEC-BR"/></xsl:when>
			<xsl:when test="$doc-code = 'DESENHOSMOD'"><xsl:value-of select="$ESPEC-BR"/></xsl:when>
			<xsl:otherwise><xsl:value-of select="$doc-code"/></xsl:otherwise>
		</xsl:choose>
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
	
</xsl:stylesheet>
