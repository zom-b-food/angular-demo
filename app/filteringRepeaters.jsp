<!doctype html>
<html lang="en" ng-app="phonecatApp">
<head>
  <meta charset="utf-8">
  <title>Google Phone Gallery</title>
  <link rel="stylesheet" href="./filteringRepeaters/css/bootstrap.css">
  <link rel="stylesheet" href="./filteringRepeaters/css/app.css">
  <script src="./filteringRepeaters/js/angular.js"></script>
  <script src="./filteringRepeaters/js/controllers.js"></script>
</head>
<body ng-controller="PhoneListCtrl">

  <div class="container-fluid">
    <div class="row">
      <div class="col-md-2">
        <!--Sidebar content-->

        Search: <input ng-model="query">

      </div>
      <div class="col-md-10">
        <!--Body content-->

        <ul class="phones">
          <li ng-repeat="phone in phones | filter:query">
            <span>{{phone.name}}</span>
            <p>{{phone.snippet}}</p>
          </li>
        </ul>

      </div>
    </div>
  </div>

</body>
</html>
