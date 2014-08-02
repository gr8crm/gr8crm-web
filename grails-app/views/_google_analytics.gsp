<g:set var="webPropertyID" value="${grailsApplication.config.google.analytics.webPropertyID}"/>
<g:if test="${webPropertyID}">
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', '${webPropertyID}']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</g:if>