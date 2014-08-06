<%@page session="false"%>
<%@include file="/libs/foundation/global.jsp"%>
<%@page import="com.day.cq.wcm.api.WCMMode,com.day.cq.wcm.api.components.IncludeOptions" %>

<div class="content-wrapper">
    <div class="post-wrapper">
        <div class="single-media">
            <cq:include path="post-hero-image" resourceType="foundation/components/image"/>
        </div>
        <div class="single-top">
            <div class="single-topic">
                <div class="post-topic topic-title-college-planning">topic</div>
            </div>
            <div class="single-share">
                <!-- AddThis Button BEGIN -->
                <div class="addthis_toolbox addthis_default_style ">
                <a class="addthis_counter addthis_pill_style addthis_nonzero" href="#" style="display: inline-block;"><a class="atc_s addthis_button_compact"><span></span></a><a class="addthis_button_expanded" target="_blank" title="View more services" href="#">2</a></a>
                <a class="addthis_button_facebook_like at300b" fb:like:layout="button_count"><div class="fb-like fb_iframe_widget" data-ref=".U-AABxLw7Yo.like" data-layout="button_count" data-show_faces="false" data-action="like" data-width="90" data-font="arial" data-href="http://www.rachelcruze.com/topics/college-planning/expect-these-unexpected-college-expenses" data-send="false" fb-xfbml-state="rendered" fb-iframe-plugin-query="action=like&amp;app_id=172525162793917&amp;font=arial&amp;href=http%3A%2F%2Fwww.rachelcruze.com%2Ftopics%2Fcollege-planning%2Fexpect-these-unexpected-college-expenses&amp;layout=button_count&amp;locale=en_US&amp;ref=.U-AABxLw7Yo.like&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=90"><span style="vertical-align: bottom; width: 79px; height: 20px;"><iframe name="ffe895154" width="90px" height="1000px" frameborder="0" allowtransparency="true" scrolling="no" title="fb:like Facebook Social Plugin" src="http://www.facebook.com/plugins/like.php?action=like&amp;app_id=172525162793917&amp;channel=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2FoDB-fAAStWy.js%3Fversion%3D41%23cb%3Df1110b6d6c%26domain%3Dwww.rachelcruze.com%26origin%3Dhttp%253A%252F%252Fwww.rachelcruze.com%252Ff3920968a4%26relation%3Dparent.parent&amp;font=arial&amp;href=http%3A%2F%2Fwww.rachelcruze.com%2Ftopics%2Fcollege-planning%2Fexpect-these-unexpected-college-expenses&amp;layout=button_count&amp;locale=en_US&amp;ref=.U-AABxLw7Yo.like&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=90" style="border: none; visibility: visible; width: 79px; height: 20px;" class=""></iframe></span></div></a>
                <a class="addthis_button_tweet at300b"><iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/tweet_button.1406859257.html#_=1407188999894&amp;count=horizontal&amp;counturl=http%3A%2F%2Fwww.rachelcruze.com%2Ftopics%2Fcollege-planning%2Fexpect-these-unexpected-college-expenses&amp;id=twitter-widget-0&amp;lang=en&amp;original_referer=http%3A%2F%2Fwww.rachelcruze.com%2Ftopics%2Fcollege-planning%2Fexpect-these-unexpected-college-expenses%23.U-AAB4BdVSk&amp;size=m&amp;text=Expect%20These%20Unexpected%20College%20Expenses!%20%7C%20Rachel%20Cruze%3A&amp;url=http%3A%2F%2Fwww.rachelcruze.com%2Ftopics%2Fcollege-planning%2Fexpect-these-unexpected-college-expenses%23.U-AAB-ivIa4.twitter" class="twitter-share-button twitter-tweet-button twitter-share-button twitter-count-horizontal" title="Twitter Tweet Button" data-twttr-rendered="true" style="width: 107px; height: 20px;"></iframe></a>
                <div class="atclear"></div></div>
                <script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
                <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-520bda1d5bf75bc0"></script>
                <!-- AddThis Button END -->
            </div>
        </div>
        <div class="single-body">
            <%
                if(WCMMode.fromRequest(slingRequest) != WCMMode.EDIT) {
                    IncludeOptions.getOptions(request, true).setDecorationTagName("");
                }
            %>
            <cq:include path="post-title" resourceType="rachelcruze/components/title"/>
            <div class="post-subtitle"><%= properties.get("subtitle", "") %></div>
            <%--<form method="POST" action="<%= currentPage.getPath() %>/_jcr_content" enctype="multipart/form-data">
                <textarea name="text" id="editor1" rows="10" cols="80">
                    <%= properties.get("text", "") %>
                </textarea>
                <input type="submit" value="Save"/>
            </form>
            <script>
                CKEDITOR.replace('editor1');
            </script>--%>
            <cq:include path="post-subtitle" resourceType="rachelcruze/components/plaintext"/>
            <cq:include path="text" resourceType="foundation/components/text"/>
        </div>
    </div>
    <div class="single-plug">&nbsp;
        <cq:include path="post-plug" resourceType="foundation/components/image"/>
    </div>
    <div class="single-recommended">
        recommended posts
    </div>
</div>