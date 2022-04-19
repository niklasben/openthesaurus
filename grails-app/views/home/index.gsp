<!doctype html>
<%@page import="com.vionto.vithesaurus.*" %>
<html>
<head>
    <title><g:message code="homepage.title"/></title>
    <meta name="layout" content="homepage" />
    <g:if test="${withAd}">
        <!-- yieldlove -->
        <script type='text/javascript'>
        var yieldlove_site_id = "openthesaurus.de_startseite";
        </script>
        <script type='text/javascript' src='//cdn-a.yieldlove.com/yieldlove-bidder.js?openthesaurus.de_${params.test ? "test" : "startseite"}'></script>
        <script async='async' src='https://securepubads.g.doubleclick.net/tag/js/gpt.js'></script>
        <script>
        var googletag = googletag || {};
        googletag.cmd = googletag.cmd || [];
        <g:if test="${params.test}">
            googletag.cmd.push(function() {
                googletag.pubads().disableInitialLoad();
                googletag.enableServices();
              });
        </g:if>
        </script>
        <!-- yieldlove end -->
    </g:if>
</head>
<body>

<hr/>

<g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
</g:if>

<g:if test="${!params.test}">
    <g:render template="/home/ads"/>
</g:if>

</body>
</html>
