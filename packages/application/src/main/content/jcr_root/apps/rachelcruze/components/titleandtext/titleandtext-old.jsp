<%@page session="false"%>
<%@ page import="com.day.cq.wcm.api.WCMMode,
com.day.cq.wcm.foundation.Placeholder" %><%
%><%@include file="/libs/foundation/global.jsp"%>
<section class="wrap">
    <%
    if(WCMMode.fromRequest(slingRequest) == WCMMode.EDIT) { %>
        <cq:text property="title" tagName="h2" escapeXml="true" placeholder="<%= Placeholder.getDefaultPlaceholder(slingRequest, component, null)%>"/>
        <cq:text property="text" tagName="div" escapeXml="true" placeholder="<%= Placeholder.getDefaultPlaceholder(slingRequest, component, null)%>"/>
    <%  } else { %>
        <cq:text property="title" tagName="h2" escapeXml="true"/>
        <cq:text property="text" tagName="div" escapeXml="true"/>    
    <%  } %>
</section>