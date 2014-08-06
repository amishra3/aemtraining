<%@page session="false"%>
<%@include file="/libs/foundation/global.jsp"%>

<%--<body>
    <h1> rachelcruze Example Page </h1>
    <h2> Hello World</h2>
    <ul id="names"></ul>--%>
    <%--<textarea placeholder="Insert content here" name="editor1" id="editor1" rows="10" cols="80">
        This is my textarea to be replaced with CKEditor.
    </textarea>
    <script>
            //tinymce.init({selector:'textarea'});
            CKEDITOR.replace('editor1');
    </script>--%>
    <%--<cq:include path="par" resourceType="foundation/components/parsys"/>
</body>--%>

<body class="<%= properties.get("body-classes", "") %>">
    <div id="page-wrapper">
        <header id="header-primary">
            <div class="wrap">
                <button id="toggle-mobile-nav">X</button>

                <div class="branding">
                    logo
                </div>

                <nav id="nav-primary">&nbsp;
                <cq:include path="topnav" resourceType="foundation/components/topnav"/>
                  <%--
                  <ul id="menu-primary-navigation" class="nav-tablet"><li id="menu-item-2132" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2132"><a href="/">Home</a></li>
                    <li id="menu-item-232" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-232"><a href="/about">About</a></li>
                    <li id="menu-item-222" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-222"><a href="/events">Events</a></li>
                    <li id="menu-item-252" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-252"><a href="/resources">Resources</a></li>
                    <li id="menu-item-82" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-82"><a href="http://www.daveramsey.com/store/ccruze.html">Store<span class="icon-external"> </span></a></li>
                    <li id="menu-item-212" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-212"><a href="/site-search"><span class="icon-search"> </span>Search</a></li>
                  </ul>
                  --%>
                </nav>
            </div>
        </header>

        <section id="content-primary">
            <cq:include script="content.jsp"/>
        </section>
    </div>
    <footer id="footer-primary">
        <div class="wrap">


    <section class="wrapper social-media">
    social media bar
      <%--<ul class="social_links"><li class="facebook"><a target="_blank" href="http://facebook.com/rachelramseycruze">Facebook</a></li><li class="twitter"><a target="_blank" href="http://twitter.com/rachelcruze">Twitter</a></li><li class="pinterest"><a target="_blank" href="http://pinterest.com/rachelcruze">Pinterest</a></li><li class="youtube"><a target="_blank" href="http://youtube.com/rachelcruze">YouTube</a></li><li class="rss"><a target="_blank" href="http://rachelcruze.com/feed">RSS</a></li></ul>--%>
    </section>

      <%--<ul id="menu-footer-navigation" class="nav-menu"><li id="menu-item-1092" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-1092"><a href="/">Home</a></li>
        <li id="menu-item-192" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-192"><a href="/about">About</a></li>
        <li id="menu-item-182" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-182"><a href="/events">Events</a></li>
        <li id="menu-item-282" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-282"><a href="/resources">Resources</a></li>
        <li id="menu-item-202" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-202"><a href="http://www.daveramsey.com/store/ccruze.html">Store</a></li>
        <li id="menu-item-272" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-272"><a href="/press">Press</a></li>
    </ul> --%>
         bottom nav
          <div class="footer-bottom">
            2014 rachelcruze.com All rights reserved.
          </div>

        </div>
      </footer>
</body>