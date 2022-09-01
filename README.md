# Dude How's My City

[![CircleCI](https://circleci.com/gh/circleci/dhmc_be_rails.svg?style=svg)](https://github.com/Dude-Hows-My-City/dhmc_be_rails)

# API Usage
- Base URL: 'https://dashboard.heroku.com/apps/dude-hows-my-city-be'

---

- Available Endpoints: 
      - [User Endpoints](#USER)
      - [City Endpoints](#CITY)
      - [Favorite Endpoints](#FAVORITE)

---

# User

**Create User**

- This endpoint consumes data sent from the front end to create a user.

``` ruby
[POST] /api/v1/users
```

``` json
{
  "data": {
    "id": "3",
    "type": "user",
    "attributes": {
      "username": "Hotdog King " 
    }
  }
}
```

---



Summary of the project, backend resources and technologies, link to Turing project expectations
List all endpoints and show example json bodies
Link all repos and hosted apps
List contributors with Linkdin and Github
