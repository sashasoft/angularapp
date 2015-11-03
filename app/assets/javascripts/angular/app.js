'use strict';

var myApp = angular.module('myApp', ['ngRoute', 'ngResource']); 

//Routes
myApp.config([
  '$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
    $routeProvider.when('/mans', {
      templateUrl: 'partials/man-index.html',
      controller: 'ManListCtrl'
    });
    $routeProvider.when('/mans/new', {
      templateUrl: 'partials/man-new.html',
      controller: 'ManNewCtrl'
    });
    $routeProvider.when('/mans/:id/edit', {
      templateUrl: 'partials/man-edit.html',
      controller: 'ManEditCtrl'
    });
    $routeProvider.when('/mans/:id', {
      templateUrl: 'partials/man-detail.html',
      controller: 'ManDetailCtrl'
    });
    $routeProvider.otherwise({
      redirectTo: '/mans'
    });
  }
]);
