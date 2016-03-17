describe('MyVaccinationHistoryController', function() {
  beforeEach(module('MyVaccinationHistory'));


  var ctrl;

  beforeEach(inject(function($controller) {
    ctrl = $controller('MyVaccinationHistoryController');

  }));

  // it('initialises with an empty result', function() {
  //   expect(ctrl.myVaccinationHistory).toBeUndefined();
  // })

  describe('when searching for a vaccination', function(){
    var vaccinations = [
      {
        id: 1,
        science_name: "Typhoid"
      }
    ];

    it('displays a matching vaccination', function() {
      expect(ctrl.myVaccinationHistory.vaccinations).toEqual(vaccinations);
    });
  });
});
