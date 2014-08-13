<%@page session="false"%>
<%@include file="/libs/foundation/global.jsp" %>
<%@page import="com.day.cq.wcm.api.WCMMode,
com.day.cq.wcm.api.components.IncludeOptions,
com.day.cq.wcm.api.Page" %>


<div class="content-wrapper">
  <div class="post-wrapper">
    <div class="single-media">
      <cq:include path="image" resourceType="foundation/components/image" />
    </div>
    <div class="single-top">

      <div class="single-topic">
        topic
      </div>
      <div class="single-share">
        share
      </div>

    </div>
    <div class="single-body">
    <% if(WCMMode.fromRequest(slingRequest) != WCMMode.EDIT) {
      IncludeOptions.getOptions(request, true).setDecorationTagName("");
    } %>
    <cq:include path="post-title" resourceType="rachelcruze/components/title" />
    <div class="post-title"><cq:include path="subtitle" resourceType="rachelcruze/components/plaintext" /></div>
      <%-- <h2 class="post-title"><%= properties.get("jcr:title", "") %></h2> --%>
      post body
    </div>
  </div>
  <div class="single-plug">
  </div>
  <div class="single-recommended">
    reommended posts
  </div>
</div>

