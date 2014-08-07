<%@page session="false"%>
<%@ page import="com.day.cq.commons.Doctype,
    com.day.cq.wcm.api.WCMMode,
    com.day.cq.wcm.api.components.DropTarget,
    com.day.cq.wcm.foundation.Image, com.day.cq.wcm.foundation.Placeholder" %><%
%><%@include file="/libs/foundation/global.jsp"%>
<% if(WCMMode.fromRequest(slingRequest) == WCMMode.EDIT) { %>
<style>
    /* edit mode styling fix for dropping images */
    p.info {
        display: block;
    }
</style>
<% } %>
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
        <%--<div class="image" id="<%= xssAPI.encodeForHTMLAttr(divId) %>">--%>
        <%--<% image.draw(out); %><br>--%>
        <%--
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
<section class="wrapper about-rachel">
    <% image.draw(out); %>
    <%--<img src="<%= image.getPath() %>.img.png"/>--%>
    <%--<p class="info <%= ddClassName %>"><%= properties.get("text") %></p>--%>
    <cq:text property="text" tagName="p" tagClass="<%= "info " + ddClassName %>" escapeXml="true" placeholder="<%= placeholder %>"/>
    <%--<img src="//a248.e.akamai.net/f/1611/26335/9h/dramsey.download.akamai.com/23572/daveramsey.com/media/3_way_universal/rachel_cruze/rachel_about_circle.png" alt="About Rachel Cruze">--%>
    <%--<p class="info">Rachel Cruze, Dave Ramsey’s daughter, grew up learning how money works. She has a heart to empower this generation to save, give, and live intentionally.</p>--%>
    <a class="btn" href="#">about me</a>
    <a class="btn" href="#">subscribe</a>
    <%--<cq:include path="socialsharingbar" resourceType="rachelcruze/components/socialsharingbar"/>--%>
</section>
<br style="clear: both;"/>
