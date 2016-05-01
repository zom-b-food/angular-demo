
<!doctype html>
<html>
  <head>
    <title>Page Title</title>
    <!--  <meta http-equiv="Refresh" content="0; url=http://localhost:8181/angular-phonecat/app.jsp"> -->

    <!-- If the meta tag doesn't work, try JavaScript to redirect. -->
  <!-- 
    <script type="text/javascript">
      window.location.href = "http://localhost:8181/angular-phonecat/app.jsp"
    </script>
 -->
  </head>

  <body>
    <!-- If JavaScript doesn't work, give a link to click on to redirect. -->
 
    <ul class="nav-list naked-list">
              <!-- ngRepeat: navGroup in currentArea.navGroups track by navGroup.name --><li ng-repeat="navGroup in currentArea.navGroups track by navGroup.name" class="nav-index-group ng-scope">
                <a href="tutorial" ng-class="navClass(navGroup)" class="nav-index-group-heading ng-binding active">Tutorial</a>
                <ul class="aside-nav">
                  <!-- ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/bootstrapping.jsp" class="ng-binding">0 - Bootstrapping</a>
                  </li><!-- end ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/staticT.jsp" class="ng-binding">1 - Static Template</a>
                  </li><!-- end ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/angularT.jsp" class="ng-binding">2 - Angular Templates</a>
                  </li><!-- end ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/filteringRepeaters.jsp" class="ng-binding">3 - Filtering Repeaters</a>
                  </li><!-- end ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/dataBinding.jsp" class="ng-binding">4 - Two-way Data Binding</a>
                  </li><!-- end ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/xhr.jsp" class="ng-binding">5 - XHRs &amp; Dependency Injection</a>
                  </li><!-- end ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/linksImages.jsp" class="ng-binding">6 - Templating Links &amp; Images</a>
                  </li><!-- end ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/routing.jsp" class="ng-binding">7 - Routing &amp; Multiple Views</a>
                  </li><!-- end ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/moreT.jsp" class="ng-binding">8 - More Templating</a>
                  </li><!-- end ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/filters.jsp" class="ng-binding">9 - Filters</a>
                  </li><!-- end ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/eventHandlers.jsp" class="ng-binding">10 - Event Handlers</a>
                  </li><!-- end ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active" style="">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/rest.jsp" class="ng-binding">11 - REST and Custom Services</a>
                  </li><!-- end ngRepeat: navItem in navGroup.navItems --><li ng-repeat="navItem in navGroup.navItems" ng-class="navClass(navItem)" class="nav-index-listing ng-scope active current" style="">
                    <!-- ngIf: navItem.extra.href -->
                    <a tabindex="2" ng-class="linkClass(navItem)" href="app/animation.jsp" class="ng-binding">12 - Applying Animations</a>
                  <!-- end ngRepeat: navItem in navGroup.navItems -->
                </ul>
              </li><!-- end ngRepeat: navGroup in currentArea.navGroups track by navGroup.name -->
            </ul>
  </body>
</html>