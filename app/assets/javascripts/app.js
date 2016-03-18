var myVaccinationHistory = angular.module('MyVaccinationHistory', []);

myVaccinationHistory.controller('myVaccinationHistoryController', ['$scope', '$http', function($scope, $http) {

  $http.get('/histories')
    .then(function(response){
      $scope.histories = response.data;
    }, function(response){
    });
}]);
