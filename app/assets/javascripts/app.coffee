# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
myVaccinationCardApp = angular.module('MyVaccinationCardApp',[
  'templates',
  'ngRoute',
  'controllers',
])

myVaccinationCardApp.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'HomeController'
      )
])

vaccination_histores = [
  {
    id: 1
    science_name: "Typhoid"
  },
  {
    id: 2
    science_name: "Chlamydia"
  },
]

controllers = angular.module('controllers',[])
controllers.controller("HomeController", [ '$scope', '$routeParams', '$location',
  ($scope, $routeParams, $location)->
    $scope.search =(keywords)-> $location.path("/").search('keywords',keywords)

    if $routeParams.keywords
      keywords = $routeParams.keywords.toLowerCase()
      $scope.vaccination_histores = vaccination_histories.filter (vaccination) -> vaccination.science_name.toLowerCase
])
