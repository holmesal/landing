(function(){"use strict";angular.module("landingApp",["ngCookies","ngResource","ngSanitize","ngRoute"]).config(["$routeProvider",function(a){return $locationProvider.html5Mode(!0),a.when("/",{templateUrl:"views/main.html",controller:"MainCtrl"}).otherwise({redirectTo:"/"})}])}).call(this),function(){"use strict";angular.module("landingApp").controller("MainCtrl",["$scope",function(a){return a.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"]}])}.call(this);