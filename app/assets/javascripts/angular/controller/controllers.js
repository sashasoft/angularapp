'use strict';

var myApp = angular.module('myApp');

myApp.controller("ManListCtrl", ['$scope', '$http', '$resource', 'Mans', 'Man', '$location', function($scope, $http, $resource, Mans, Man, $location) {
  console.log("ManListCtrl");
  $scope.mans = Mans.query();
  $scope.deleteMan = function (id) {
    if (confirm("Are you sure you want to delete this Man?")){
      console.log(id);
      Man.delete({id: id}, function(){
        $scope.mans = Mans.query();
      });
    }
  }
}]);

myApp.controller("ManNewCtrl", ['$scope', '$http', '$resource', 'Mans', '$location', '$routeParams', function($scope, $http, $resource, Mans, $location, $routeParams) {
  console.log("ManNewCtrl");
  $scope.man = {};  
  $scope.save = function () {
      Mans.create({man: $scope.man}, function(){
        $location.path('/mans');
      });
  }
}]);

myApp.controller("ManDetailCtrl", ['$scope', '$resource', 'Man', '$location', '$routeParams', function($scope, $resource, Man, $location, $routeParams) {
  $scope.man = Man.show({id: $routeParams.id});
}]);

myApp.controller("ManEditCtrl", ['$scope', '$resource', 'Man', '$location', '$routeParams', function($scope, $resource, Man, $location, $routeParams) {
  console.log("ManEditCtrl");
  $scope.man = Man.get({id: $routeParams.id});
  $scope.update = function (){
    Man.update({id: $scope.man.id}, {man: $scope.man}, function(){
      $location.path('/mans/'+$routeParams.id);
      console.log($scope.man.age);
    });
  }
}]);
















//////phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', 'Phone',
  //////function($scope, $routeParams, Phone) {
    //////$scope.phone = Phone.get({phoneId: $routeParams.phoneId}, function(phone) {
      //////$scope.mainImageUrl = phone.images[0];
    //////});

    //////$scope.setImage = function(imageUrl) {
      //////$scope.mainImageUrl = imageUrl;
    //////};
  //////}]);


//////var phonecatControllers = angular.module('phonecatControllers', []);

//////phonecatControllers.controller('PhoneListCtrl', ['$scope', 'Phone',
  //////function($scope, Phone) {
    //////$scope.phones = Phone.query();
    //////$scope.orderProp = 'age';
  //////}]);

//////phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', 'Phone',
  //////function($scope, $routeParams, Phone) {
    //////$scope.phone = Phone.get({phoneId: $routeParams.phoneId}, function(phone) {
      //////$scope.mainImageUrl = phone.images[0];
    //////});

    //////$scope.setImage = function(imageUrl) {
      //////$scope.mainImageUrl = imageUrl;
    //////};
  //////}]);

