<%@page session="false"%>
<%@ page import="com.day.cq.wcm.api.WCMMode,
                com.day.cq.wcm.foundation.Placeholder" %><%
%><%@include file="/libs/foundation/global.jsp"%><%
    if(WCMMode.fromRequest(slingRequest) == WCMMode.EDIT) { %>
        <cq:text property="text" tagClass="section-title" escapeXml="true" placeholder="<%= Placeholder.getDefaultPlaceholder(slingRequest, component, null)%>"/>no
<%  } else { %>
        <cq:text property="text" tagName="h2" tagClass="section-title" escapeXml="true"/>yes
<%  } %>