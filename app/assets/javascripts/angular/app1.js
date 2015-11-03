//'use strict';

///* App Module */

//var myApp = angular.module('myApp', [
  //'ngRoute',
  //'ngResource',

  //'manControllers',
  //'manServices'
//]);

//myApp.factory('Man', ['$resource', function($resource){
 //return $resource('/mans/:id.json', {}, {
   //show: { method: 'GET' },
   //update: { method: 'PUT', params: {id: '@id'} },
   //delete: { method: 'DELETE', params: {id: '@id'} }
 //});
//}]);


//myApp.config(['$routeProvider', '$locationProvider',
  //function($routeProvider, $locationProvider) {
    //$routeProvider.when('/mans', {
          //templateUrl: 'partials/man-index.html',
          //controller: 'ManListCtrl'
        //});
    //$routeProvider.when('/mans/:id', {
        //templateUrl: 'partials/man-detail.html',
        //controller: 'ManDetailCtrl'
      //});
      //$routeProvider.otherwise({
        //redirectTo: '/mans'
    //});
  //}
//]);

////var phonecatApp = angular.module('phonecatApp', [
  ////'ngRoute',
  //////'phonecatControllers',
  //////'phonecatFilters',
  //////'phonecatServices',

  ////'namControllers',
  ////'manServices',
////]);

////phonecatApp.config(['$routeProvider',
  ////function($routeProvider) {
    ////$routeProvider.
      //////when('/phones', {
        //////templateUrl: 'partials/phone-list.html',
        //////controller: 'PhoneListCtrl'
      //////}).
      //////when('/phones/:phoneId', {
        //////templateUrl: 'partials/phone-detail.html',
        //////controller: 'PhoneDetailCtrl'
      //////}).
      ////when('/mans', {
        ////templateUrl: 'partials/man-index.html',
        ////controller: 'ManIndexCtrl'
      ////}).
      ////otherwise({
        ////redirectTo: '/phones'
      ////});



  ////}]);
