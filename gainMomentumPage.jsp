<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/desktop/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="common" tagdir="/WEB-INF/tags/desktop/common"%>
<%@ taglib prefix="breadcrumb"
	tagdir="/WEB-INF/tags/desktop/nav/breadcrumb"%>

<spring:eval expression="T(de.hybris.platform.util.Config).getParameter('js.forceReload.release.version')"  var="jsReleaseVersion" />
<template:page pageTitle="${pageTitle}">
<jsp:attribute name="pageCss">
	<link rel="stylesheet" type="text/css" media="all" href="${themeResourcePath}/gc2022/css/trading-bonus-scheme.min.css?${jsReleaseVersion}" />
	<link rel="stylesheet" type="text/css" media="all" href="${themeResourcePath}/gc2022/css/share-of-gi-profit.min.css?${jsReleaseVersion}" />
</jsp:attribute>
<jsp:attribute name="pageScripts">
	<script type="text/javascript" src="${commonResourcePath}/js/nondashboard/account-bonus-min.js?${jsReleaseVersion}"></script>
</jsp:attribute>
<jsp:body>
  <div id="globalMessages">
    <common:globalMessages />
  </div>
	<div class="container-flex">
		<div id="breadcrumb" class="breadcrumb">
      <breadcrumb:breadcrumb breadcrumbs="${breadcrumbs}"/>
		</div>
		<nav class="navigation">
			<cms:pageSlot position="SideContent" var="feature" element="ul" class="navigation-list" >
				<cms:component component="${feature}"/>
			</cms:pageSlot>
		</nav>
	</div>
	<div class="my_acc_dtls">
		<div class="container">
		<%-- <div id="breadcrumb" class="breadcrumb">
			<breadcrumb:breadcrumb breadcrumbs="${breadcrumbs}"/>
		</div> --%>
		<div class="row_wrap">
			<%-- <div class="side_bar_menu span-4 team_left">

			 <a href="/my-account"><spring:theme code="myaccount.dashboard"/></a>
				<cms:pageSlot position="SideContent" var="feature" element="ul" class="navigation-list" >
					<cms:component component="${feature}"/>
				</cms:pageSlot>
			</div> --%>
			<div class="span-12 acc_dtls_pg">
			<div id="sectionToPrint">
				<cms:pageSlot position="Section1" var="feature">
					<cms:component component="${feature}" element="div" />
				</cms:pageSlot>
				</div>
			</div>
		</div>
		</div>
	</div>

</jsp:body>
</template:page>
