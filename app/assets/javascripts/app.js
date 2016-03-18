var myVaccinationHistory = angular.module('MyVaccinationHistory', []);

myVaccinationHistory.controller('myVaccinationHistoryController', ['$scope', '$http', function($scope, $http) {

  $http.get('/histories/1')
    .then(function(response){
      $scope.histories = response.data;
    }, function(response){
      console.log(response);
    });

  $http.get('/countries')
    .then(function(response){
      $scope.countries = response.data;
    }, function(response){
      console.log(response);
    });


}]);
