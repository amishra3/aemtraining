<%@page session="false"%>
<%@include file="/libs/foundation/global.jsp" %>
<body class="<%= properties.get("body-classes", "") %>">
    <div id="page-wrapper">
        <header id="header-primary">
            <div class="wrap">
                <button id="toggle-mobile-nav">X</button>
                <cq:include path="branding" resourceType="rachelcruze/components/logo" />
                <nav id="nav-primary">
                  <cq:include path="topnav" resourceType="rachelcruze/components/topnav" />
                </nav>
            </div>
        </header>

        <section id="content-primary">
            <cq:include script="content.jsp" />
        </section>
    </div>
    <footer id="footer-primary">
        <div class="wrap">


    <section class="wrapper social-media">
      social media bar
    </section>

          <div class="footer-bottom">
            2014 rachelcruze.com All rights reserved.
          </div>

        </div>
      </footer>
</body>