(function(){"use strict";angular.module("landingApp",["ngCookies","ngResource","ngSanitize","ngRoute","firebase"]).config(["$routeProvider","$locationProvider",function(a){return a.when("/",{templateUrl:"views/main.html",controller:"MainCtrl"}).otherwise({redirectTo:"/"})}])}).call(this),function(){"use strict";angular.module("landingApp").controller("MainCtrl",["$scope","$firebase",function(a,b){var c,d,e;return a.changeText="Hint: click to change the color of this site for everyone",document.getElementById("bgVideo").playbackRate=.5,c=["#4F92E0","#00CF69","#F5A623","#00E8C6"],e=new Firebase("https://alonso.firebaseio.com/color"),d=b(e),d.$bind(a,"bgColor"),a.changeColor=function(){var b;for(b=a.bgColor;b===a.bgColor;)b=c[Math.floor(Math.random()*c.length)];return a.bgColor=b,console.log("color is "+b),a.changeText="Nice! "}}])}.call(this);