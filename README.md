MY VACCINATION CARD RECORD
--------------------------

Makers Academy Week 9 Makerthon Project (2.5 day project)

Problem: NHS paper medical records
-----------------------------------
* NHS do not digitally share patient's medical records when they switch doctors. Records must be physically sent to a central distribution location and then forwarded onto a new location.

In this case, the client wasn't sure what vaccinations they needed for their holiday as their vaccination card had been lost with their records.

Solution
---------
* Create a digital vaccination card

Setup and design
----------------
* Rails backend
* Angular front end
* Bootstrap styling   
(continuing on from Angular and Rails week as well as to keep simple to ensure minimum viable product (MVP) delivered)
* Info (vaccine list) from World Health Organisation and downloaded into Excel, cleaned and saved into csv, which then imported into ActiveRecord using a rake file

* Fork repository
* clone down
* bundle install
* npm install
* bower install
* db:migrate
* In order to run the app locally on your machine, ensure that the correct severs are running by opening npm start.

Testing
-------
* Rspec
* Capybara
* Karma-Jasmine
* Factory girl

Tools
------
* Waffle to track and record progress and changes made to Github repository

Future changes
--------------
* Re-design Devise log in so can use Angular. This will improve user- vaccination model relationships
* Add functionality so a user can select a country and see what vaccinations they require and by what timeframes.
* Further refactoring of controllers
* More TDD to Angular, in particular to json
