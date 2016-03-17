var myVaccinationHistory = angular.module('MyVaccinationHistory', []);

myVaccinationHistory.controller('myVaccinationHistoryController', ['$scope', '$http', function($scope, $http) {

  $http.get('/histories/1')
    .then(function(response){
      $scope.histories = response.data;
      console.log(response)
    }, function(response){
      console.log(response)
    });
}]);
