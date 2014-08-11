<%@page session="false"%>
<%@ page import="com.day.cq.commons.Doctype,
    com.day.cq.wcm.api.WCMMode,
    com.day.cq.wcm.api.components.DropTarget,
    com.day.cq.wcm.foundation.Image, com.day.cq.wcm.foundation.Placeholder" %><%
%><%@include file="/libs/foundation/global.jsp"%>
<%
    boolean isAuthoringUIModeTouch = Placeholder.isAuthoringUIModeTouch(slingRequest);

    Image image = new Image(resource, "image");

    // don't draw the placeholder in case UI mode touch it will be handled afterwards
    if (isAuthoringUIModeTouch) {
        image.setNoPlaceholder(true);
    }

    //drop target css class = dd prefix + name of the drop target in the edit config
    String ddClassName = DropTarget.CSS_CLASS_PREFIX + "image";

    if (image.hasContent() || WCMMode.fromRequest(request) == WCMMode.EDIT) {
        image.loadStyleData(currentStyle);
        // add design information if not default (i.e. for reference paras)
        if (!currentDesign.equals(resourceDesign)) {
            image.setSuffix(currentDesign.getId());
        }
        image.addCssClass(ddClassName);
        image.setSelector(".img");
        image.setDoctype(Doctype.fromRequest(request));

        String divId = "cq-textimage-jsp-" + resource.getPath();
        String imageHeight = image.get(image.getItemName(Image.PN_HEIGHT));
        // div around image for additional formatting
        %>
        <%--
        <div class="image" id="<%= xssAPI.encodeForHTMLAttr(divId) %>">
            <% image.draw(out); %><br>
            <cq:text property="image/jcr:description" placeholder="" tagName="small" escapeXml="true"/>
        </div>
        --%>
        <%@include file="/libs/foundation/components/image/tracking-js.jsp"%>
        <%
    }

       String placeholder = (isAuthoringUIModeTouch && !image.hasContent())
               ? Placeholder.getDefaultPlaceholder(slingRequest, component, "", ddClassName)
               : "";
    %>
<section class="wrapper about-rachel" style="border: none; padding-bottom: 0px;">
    <% image.draw(out); %>
    <% if(WCMMode.fromRequest(slingRequest) == WCMMode.EDIT) { %>
        <cq:text property="text" tagClass="<%= "info " + ddClassName %>" escapeXml="true" placeholder="<%= placeholder %>"/>
    <% } else { %>
        <cq:text property="text" tagName="p" tagClass="info" escapeXml="true"/>
    <% } %>
    <a class="btn" href="${properties.aboutLink}.html">about me</a>
    <a class="btn" href="${properties.subscribeLink}.html">subscribe</a>
    <% //if (image.hasContent()) { %>
        <%--<cq:include path="socialsharingbar" resourceType="rachelcruze/components/socialsharingbar"/>--%>
    <% //} %>
</section>
<%--<br style="clear: both;"/>--%>
