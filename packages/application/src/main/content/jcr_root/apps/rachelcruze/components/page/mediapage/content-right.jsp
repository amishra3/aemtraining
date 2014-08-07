<%@page session="false"%>
<%@include file="/libs/foundation/global.jsp"%>
<%@page import="com.day.cq.wcm.api.WCMMode,com.day.cq.wcm.api.components.IncludeOptions" %>
<% if(WCMMode.fromRequest(slingRequest) == WCMMode.EDIT) { %>
<style>
    /* edit mode styling fix for iparsys in right sidebar */
    section.wrapper.about-rachel {
        width: 215px;
    }
</style>
<% } %>
<%
    if(WCMMode.fromRequest(slingRequest) != WCMMode.EDIT) {
        IncludeOptions.getOptions(request, true).setDecorationTagName("");
    }
%>
<cq:include path="sidebar-primary" resourceType="foundation/components/iparsys"/>

        <%--
<div class="sidebar-primary">
    <section class="wrapper about-rachel">
        <cq:include path="aboutmebox" resourceType="rachelcruze/components/aboutmebox"/>

        <section class="wrapper social-media">
            <ul class="social_links"><li class="facebook"><a target="_blank" href="http://facebook.com/rachelramseycruze">Facebook</a></li><li class="twitter"><a target="_blank" href="http://twitter.com/rachelcruze">Twitter</a></li><li class="pinterest"><a target="_blank" href="http://pinterest.com/rachelcruze">Pinterest</a></li><li class="youtube"><a target="_blank" href="http://youtube.com/rachelcruze">YouTube</a></li><li class="rss"><a target="_blank" href="http://rachelcruze.com/feed">RSS</a></li></ul>
        </section>
    </section>
        --%>
<%--

  <section class="wrapper topic-list">
    <h2 class="section-title">Topics</h2>
    <ul class="topics">
          <li class="topic-college-planning">
        <a href="/topics/college-planning" class="topic-title-college-planning">College Planning</a>
      </li>
          <li class="topic-debt-free-living">
        <a href="/topics/debt-free-living" class="topic-title-debt-free-living">Debt-Free Living</a>
      </li>
          <li class="topic-everything-else">
        <a href="/topics/everything-else" class="topic-title-everything-else">Everything Else</a>
      </li>
          <li class="topic-kids-and-money">
        <a href="/topics/kids-and-money" class="topic-title-kids-and-money">Kids &amp; Money</a>
      </li>
          <li class="topic-real-life-on-a-budget">
        <a href="/topics/real-life-on-a-budget" class="topic-title-real-life-on-a-budget">Real Life On A Budget</a>
      </li>
        </ul>
  </section>
  <section class="wrapper popular-list">
  <h2 class="section-title">Popular</h2>
  <ul class="popular-links"><li><a href="http://www.rachelcruze.com/topics/real-life-on-a-budget/where-do-i-shop-for-clothes">Where Do I Shop for Clothes?</a></li><li><a href="http://www.rachelcruze.com/topics/real-life-on-a-budget/6-quick-back-to-school-shopping-tips">6 Quick Back-to-School Shopping Tips</a></li><li><a href="http://www.rachelcruze.com/topics/debt-free-living/proof-that-you-can-become-debt-free">Proof That You Can Become Debt-Free!</a></li><li><a href=""></a></li><li><a href=""></a></li></ul></section>

</div>
--%>