# Animal Shelter API application

This is an API for a local animal shelter. The API will list the available cats and dogs at the shelter.

The entire application is contained within the `app.rb` file.

<<<<<<< HEAD
## Install
    Clone  https://github.com/oswen138/animal-shelter-api.git
    bundle install
    rake db:create
    rake db:migrate
    rake db:seed

## Run the app
    enter rails s in terminal
    go to localhost:3000   (refer to endpoints below)

  
### Request : return list of animals
`GET http://localhost:3000/animals`
### Response

    {
        "id": 1,
        "animalType": "Cat",
        "catName": "Charlie",
        "dogName": "Misty",
        "catType": "Ojos Azules",
        "dogType": "Pomeranian",
        "dogSize": "small"
    }, ...
    {
        "id": 6,
        "animalType": "Dog",
        "catName": "Milo",
        "dogName": "Tank",
        "catType": "Foldex Cat",
        "dogType": "Rat Terrier",
        "dogSize": "extra large"
    },
  
### Request : return random list of cat by `:id`
`GET http://localhost:3000/animals/:id`

### Request : return random list of either dogs or cats
`GET http://localhost:3000/animals/?animalType=['cat' or 'dog']`

### Request : return animal by random
`GET http://localhost:3000/animals/random`

### Request : post a new animal. You can add name by clicking on "Body" in Postman
`POST http://localhost:3000/animals`

### Request : update an animal. Just as with the `POST` call, you'll pass in the parameters you want to update in the body
`PUT http://localhost:3000/animals/:id`

### Request : delete an animal with the corresponding :id
`DELETE http://localhost:3000/animals/:id`
 #animal-shelter-API/app/controllers/animals_controller.rb 
 ### Response

    {
    "message": "Animal deleted"
    }

## Notes
* Throttle call attempts for this API is limited to 3 reqs/2 minutes by default. 
You can customize the limit and period or completely deactivate by commenting/deleting the following code block.
## 

    
    #animal-shelter-API/config/initializers/rack_attack.rb (for rails app)
    ...  
      Rack::Attack.throttle("requests by ip", limit: 3, period: 2) do |request|
      request.ip
    end
    ...
  * Throttle call attempts for this API is limited to 3 reqs/2 minutes by default. 
You can customize the limit and period or completely deactivate by commenting/deleting the following code block.
## 

    
    #animal-shelter-API/app/controllers/animals_controller.rb 
    ...
    @animals = Animal.paginate(page: params[:page], :per_page => 10)
    ...

## Known Bugs
* Cat and Dog search results are not separate...not sure how to fix this issue yet, need help

## Technologies Used
* Ruby
  * Gems: Pry, RSpec, will_paginate, rake_attack, factory_bot
* Rails

## Support and contact details

_Email no one with any questions, comments, or concerns._

### License

*{This software is licensed under the MIT license}*

Copyright (c) 2020 **_Ophelia Swen_**
=======
`config.ru` is a minimal Rack configuration for unicorn.

`run-tests.sh` runs a simplistic test and generates the API
documentation below.

It uses `run-curl-tests.rb` which runs each command defined in
`commands.yml`.

## Install
    Clone  https://github.com/oswen138/animal-shelter-api.git
    bundle install

## Run the app
    
    localhost:3000    see test API call paths below

## Run the tests

    use rspec command in terminal

## Get list of Things

https://github.com/oswen138/animal-shelter-api.git
>>>>>>> b3f2ed13bb579a47fd45b39626c2e6f3bee40e9e

git pull attempt messed up files..
