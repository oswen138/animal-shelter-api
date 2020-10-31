# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

Throttle call attempts for this API is limited to 3 reqs/2 minutes by default. 
You can customize the limit and period or completely deactivate by commenting/deleting the following code block.
* ...
 #animal-shelter-API/config/initializers/rack_attack.rb (for rails app)

...
  Rack::Attack.throttle("requests by ip", limit: 3, period: 2) do |request|
    request.ip
  end
...

Results are paginated with the will_paginate gem.
You can customize the "per page" limit by adjusting the number on the following code block.

 #animal-shelter-API/app/controllers/animals_controller.rb 

...
 @animals = Animal.paginate(page: params[:page], :per_page => 10)
...

Testing API calls

GET http://localhost:3000/quotes/:id will show an individual quotation by :id.
POST http://localhost:3000/quotes

Delete a movie

http://localhost:3000/animals/5   ID of 41

{
    "message": "Animal deleted"
}

Put 