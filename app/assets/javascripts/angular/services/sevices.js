'use strict';

var myApp = angular.module('myApp');

myApp.factory('Mans', ['$resource',function($resource){
  return $resource('/mans.json', {},{
    query: { method: 'GET', isArray: true },
    create: { method: 'POST' }
  })
}]);

myApp.factory('Man', ['$resource', function($resource){
  return $resource('/mans/:id.json', {}, {
    show: { method: 'GET' },
    update: { method: 'PUT', params: {id: '@id'} },
    delete: { method: 'DELETE', params: {id: '@id'} }
  });
}]);




















////angular.module('phonecatServices', ['ngResource']).
    ////factory('Phone', function($resource){
  ////return $resource('phones/:phoneId.json', {}, {
    ////query: {method:'GET', params:{phoneId:'phones'}, isArray:true}
  ////});
////});


////angular.module('manServicesId', ['ngResource']).
////  factory('Man', function($resource){
////    return $resource('/mans/:id', {}, {
////      query: { method:'GET', params:{id: 'id'}, json: true },
////    });
////  });

//angular.module('manServices', ['ngResource']).
  //factory('Mans', function($resource){
    //return $resource('/mans.json', {}, {
      //query: {method:'GET', isArray: true},
      //create: { method: 'POST' }
    //});
  //});
