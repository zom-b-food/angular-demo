<!doctype html>
<html lang="en" ng-app="phonecatApp">
<head>
  <meta charset="utf-8">
  <title>Google Phone Gallery</title>
  <link rel="stylesheet" href="./linksImages/css/bootstrap.css">
  <link rel="stylesheet" href="./linksImages/css/app.css">
  <script src="./linksImages/js/angular.js"></script>
  <script src="./linksImages/js/controllers.js"></script>
</head>
<body ng-controller="PhoneListCtrl">

  <div class="container-fluid">
    <div class="row">
      <div class="col-md-2">
        <!--Sidebar content-->

        Search: <input ng-model="query">
        Sort by:
        <select ng-model="orderProp">
          <option value="name">Alphabetical</option>
          <option value="age">Newest</option>
        </select>

      </div>
      <div class="col-md-10">
        <!--Body content-->

        <ul class="phones">
          <li ng-repeat="phone in phones | filter:query | orderBy:orderProp" class="thumbnail">
            <a href="#/phones/{{phone.id}}" class="thumb"><img ng-src="{{phone.imageUrl}}" alt="{{phone.name}}"></a>
            <a href="#/phones/{{phone.id}}">{{phone.name}}</a>
            <p>{{phone.snippet}}</p>
          </li>
        </ul>

      </div>
    </div>
  </div>

</body>
</html>