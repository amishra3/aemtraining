<%@page session="false"%>
<%@ page import="com.day.cq.wcm.api.WCMMode,
                com.day.cq.wcm.foundation.Placeholder" %><%
%><%@include file="/libs/foundation/global.jsp"%><%
    if(WCMMode.fromRequest(slingRequest) == WCMMode.EDIT) { %>
        <cq:text property="text" tagClass="section-title" escapeXml="true" placeholder="<%= Placeholder.getDefaultPlaceholder(slingRequest, component, null)%>"/>
<%  } else { %>
        
<%  } %>
<%
    String title = properties.get("title","");
    String text = properties.get("text","");
%>
<section class="wrap">
    <cq:text property="title" tagName="h2" escapeXml="true"/>
    <cq:text property="text" tagName="div" escapeXml="true"/>    
</section>