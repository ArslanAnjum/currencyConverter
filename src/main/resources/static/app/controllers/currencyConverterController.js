'use strict';

app.controller('currencyConverterController',
		['$scope','$timeout','$http','$filter',
			function($scope,$timeout,$http,$filter){

			$scope.init = function(){

                $http
                    .get("/currencyConverter/validCurrencies")
                    .then((response) => {
                        $scope.currencies = response.data;
                        $scope.applyMaterialSelect();
                    });
			}

			$scope.applyMaterialSelect = function(){
                $timeout(function(){
                    $('select').material_select();
                },500);
            }

            $scope.toast = function(msg){
                Materialize.toast(msg, 2500,'blue rounded');
            }

            $scope.convert = function(){

               if($scope.conversionDTO.from == $scope.conversionDTO.to){
                   $scope.convertedAmount = $scope.conversionDTO.amount;
                   return;
               }

               $http.post(
                   "/currencyConverter/convert",
                   JSON.stringify($scope.conversionDTO),
                   {
                       transformRequest : angular.identity,
                       headers : {
                            'Content-Type' : 'application/json'
                       }
                   }
               )
               .then((response) => {
                    $scope.convertedAmount = $filter('number')(parseFloat(response.data),2);
               });
            }

		}]);