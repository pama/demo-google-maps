# Example using google maps

* Add and Remove pins using remote: true
* Add a collection of pins using remote: true
* Clear all pins in a map using remote: true (an `onClick` event would be a better option)


# Setup

Bundle (`bundle install`), migrate (`rails db:migrate`) and seed (`rails db:seed). In the project root create a '.env' file and add:

```
GOOGLE_API_KEY: 
```

You need to have a google map API key. Go to [Get a Key/Authentication](https://developers.google.com/maps/documentation/javascript/get-api-key#key) and click on 'GET A KEY' button.
