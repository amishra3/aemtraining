<%@page session="false"%>
<%@ page import="com.day.cq.wcm.api.WCMMode,
com.day.cq.wcm.foundation.Placeholder" %>
<%
%><%@include file="/libs/foundation/global.jsp"%>
<section class="wrap">
<%
    if(WCMMode.fromRequest(slingRequest) == WCMMode.EDIT && properties.get("headertext","") == "" && properties.get("col1text","") == "" && properties.get("col2text","") == "") { %>
    <cq:text property="headertext" tagName="h2" escapeXml="true" placeholder="<%= Placeholder.getDefaultPlaceholder(slingRequest, component, null)%>"/>
<%  } else { %>
    <cq:text property="headertext" tagName="h2" escapeXml="true"/>
    <div class="first">
        <cq:text property="col1text" tagName="p" excapeXml="true"/> 
    </div>
    <div class="second">
        <cq:text property="col2text" tagName="p" excapeXml="true"/>            
    </div>
<%  } %>
</section>