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

Example:

``` ruby
[POST] /api/v1/users
```

Response:

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

# City

**Displays All Cities** 

- This endpoint will return all cities from the database.

``` ruby
[GET] /api/v1/cities
```

Example:

``` ruby
[GET] /api/v1/cities
```

Response:

```json
{
    "data": [
        {
            "id": "81",
            "type": "city",
            "attributes": {
                "name": "Dresden",
                "full_name": "Dresden, Germany",
                "summary": {
                    "continent": "Europe",
                    "summary": "<p>Dresden, Germany, is among the top cities with a <b>free business environment</b>.\n\n    \n        According to our city rankings, this is a good place to live with high ratings in <b>housing</b>, <b>safety</b> and <b>healthcare</b>.\n    \n\n    \n</p>\n\n"
                },
                "scores": {
                    "housing": 7.88,
                    "cost_of_living": 6.03,
                    "startups": 2.41,
                    "venture_capital": 1.53,
                    "travel_connectivity": 3.54,
                    "commute": 4.96,
                    "business_freedom": 9.07,
                    "safety": 8.46,
                    "health_care": 8.71,
                    "education": 5.12,
                    "environmental_quality": 8.11,
                    "economy": 5.37,
                    "taxation": 3.9,
                    "internet_access": 5.6,
                    "leisure_and_culture": 6.64,
                    "tolerance": 7.37,
                    "outdoors": 4.65,
                    "teleport_city_score": 62.21
                },
                "details": {
                    "image_photographer": "Oleg Brovko",
                    "image_web_url": "https://d13k13wj6adfdf.cloudfront.net/urban_areas/dresden_web-17c407d521.jpg",
                    "image_mobile_url": "https://d13k13wj6adfdf.cloudfront.net/urban_areas/dresden-34b4a78bf4.jpg",
                    "population_size_in_millions": 0.6308,
                    "average_costs": {
                        "consumer_price_index": 54.8,
                        "apples_per_kg": 2.7,
                        "bread": 0.49,
                        "cappuccino": 3.1,
                        "cinema": 10.0,
                        "fitness_club": 43.0,
                        "import_beer": 0.8,
                        "public_transport": 73.0,
                        "lunch_meal": 9.8,
                        "taxi": 2.6,
                        "restaurant_price_index": 54.8
                    },
                    "culture": {
                        "art_galleries": 62,
                        "movie_theaters": 18,
                        "comedy_clubs": 12,
                        "concert_venues": 80,
                        "historical_sites": 75,
                        "museums": 61,
                        "performing_arts_venues": 55,
                        "sports_venues": 17,
                        "zoos": 5
                    },
                    "housing": {
                        "large_apartment": 1100.0,
                        "medium_apartment": 800.0,
                        "small_apartment": 550.0
                    }
                },
                "salaries": {
                    "account_manager": 51369.56,
                    "accountant": 29918.87,
                    "administrative_assitant": 24306.34,
                    "architect": 30946.53,
                    "attorney": 43388.27,
                    "business_analyst": 42616.85,
                    "business_development": 48157.3,
                    "c_level_executive": 103218.32,
                    "cashier": 14674.29,
                    "chef": 24174.6,
                    "chemical_engineer": 39490.58,
                    "civil_engineer": 30787.34,
                    "content_marketing": 23853.56,
                    "copywriter": 37259.28,
                    "customer_support": 28545.79,
                    "data_analyst": 33713.47,
                    "data_scientist": 38948.22,
                    "dentist": 47551.33,
                    "electrical_engineer": 35012.73,
                    "executive_assistant": 27653.43,
                    "fashion_designer": 21988.14,
                    "finance_manager": 50825.25,
                    "financial_analyst": 44564.1,
                    "graphic_designer": 23101.73,
                    "hardware_engineer": 28331.05,
                    "human_resources_manager": 38896.39,
                    "it_manager": 45696.68,
                    "industrial_designer": 38576.68,
                    "interior_designer": 22280.03,
                    "lecturer": 25515.08,
                    "marketing_manager": 39226.2,
                    "mechanical_engineer": 31992.82,
                    "mobile_developer": 33737.32,
                    "nurse": 25075.5,
                    "office_manager": 29794.45,
                    "operations_manager": 37337.43,
                    "pharmacist": 42511.57,
                    "physician": 38678.7,
                    "postdoctoral_researcher": 30286.44,
                    "product_manager": 39236.76,
                    "project_manager": 49398.91,
                    "qa_engineer": 51103.93,
                    "receptionist": 23720.95,
                    "research_scientist": 30699.23,
                    "sales_manager": 32932.67,
                    "software_engineer": 36231.79,
                    "systems_administrator": 34541.42,
                    "teacher": 36918.26,
                    "ux_designer": 37094.42,
                    "waiter": 15945.69,
                    "web_designer": 25370.5,
                    "web_developer": 33880.15
                }
            }
        },
        "..."
```

---

**Display Select City**

-This enpoind will return a select city. 

``` ruby
[GET] /api/v1/cities/:id
```

Example: 

``` ruby
[GET] /api/v1/cities/:89
```

Response:

```json
{
    "data": {
        "id": "89",
        "type": "city",
        "attributes": {
            "name": "Florianopolis",
            "full_name": "Florianopolis, Brazil",
            "summary": {
                "continent": "South America",
                "summary": "<p>Florianopolis, Brazil, is characterized by <b>reasonably priced housing</b>.\n\n    \n        Our data reflects that this city has a good ranking in <b>cost of living</b> and <b>tolerance</b>.\n    \n\n    \n</p>\n\n"
            },
            "scores": {
                "housing": 9.06,
                "cost_of_living": 8.33,
                "startups": 1.0,
                "venture_capital": 0.0,
                "travel_connectivity": 0.68,
                "commute": 4.79,
                "business_freedom": 2.78,
                "safety": 6.53,
                "health_care": 5.22,
                "education": 1.02,
                "environmental_quality": 4.94,
                "economy": 2.19,
                "taxation": 2.85,
                "internet_access": 3.19,
                "leisure_and_culture": 5.33,
                "tolerance": 7.64,
                "outdoors": 5.75,
                "teleport_city_score": 43.7
            },
            "details": {
                "image_photographer": "Francisco Anzola",
                "image_web_url": "https://d13k13wj6adfdf.cloudfront.net/urban_areas/florianopolis_web-fa46d494f0.jpg",
                "image_mobile_url": "https://d13k13wj6adfdf.cloudfront.net/urban_areas/florianopolis-d07f8216bf.jpg",
                "population_size_in_millions": 0.6177,
                "average_costs": {
                    "consumer_price_index": 39.52,
                    "apples_per_kg": 1.6,
                    "bread": 0.51,
                    "cappuccino": 1.9,
                    "cinema": 8.5,
                    "fitness_club": 38.0,
                    "import_beer": 1.3,
                    "public_transport": 57.0,
                    "lunch_meal": 6.8,
                    "taxi": 6.1,
                    "restaurant_price_index": 39.52
                },
                "culture": {
                    "art_galleries": 122,
                    "movie_theaters": 89,
                    "comedy_clubs": 54,
                    "concert_venues": 135,
                    "historical_sites": 80,
                    "museums": 41,
                    "performing_arts_venues": 81,
                    "sports_venues": 57,
                    "zoos": 10
                },
                "housing": {
                    "large_apartment": 680.0,
                    "medium_apartment": 540.0,
                    "small_apartment": 400.0
                }
            },
            "salaries": {
                "account_manager": 31895.53,
                "accountant": 43440.42,
                "administrative_assitant": 15637.35,
                "architect": 19557.89,
                "attorney": 24884.19,
                "business_analyst": 26015.8,
                "business_development": 31911.93,
                "c_level_executive": 105159.37,
                "cashier": 14404.61,
                "chef": 26536.62,
                "chemical_engineer": 42824.44,
                "civil_engineer": 30124.47,
                "content_marketing": 37444.27,
                "copywriter": 22325.64,
                "customer_support": 24297.52,
                "data_analyst": 24754.64,
                "data_scientist": 48332.32,
                "dentist": 16380.68,
                "electrical_engineer": 41571.96,
                "executive_assistant": 19185.73,
                "fashion_designer": 17810.0,
                "finance_manager": 51763.88,
                "financial_analyst": 32871.9,
                "graphic_designer": 18115.11,
                "hardware_engineer": 24159.84,
                "human_resources_manager": 34819.08,
                "it_manager": 41487.04,
                "industrial_designer": 17442.13,
                "interior_designer": 24385.45,
                "lecturer": 31809.17,
                "marketing_manager": 23127.37,
                "mechanical_engineer": 26052.24,
                "mobile_developer": 21657.59,
                "nurse": 16050.69,
                "office_manager": 42682.01,
                "operations_manager": 47324.8,
                "pharmacist": 34947.32,
                "physician": 40265.53,
                "postdoctoral_researcher": 47599.67,
                "product_manager": 34902.78,
                "project_manager": 36561.96,
                "qa_engineer": 28520.16,
                "receptionist": 9115.64,
                "research_scientist": 22218.2,
                "sales_manager": 41026.35,
                "software_engineer": 29570.03,
                "systems_administrator": 20264.02,
                "teacher": 19783.78,
                "ux_designer": 24266.04,
                "waiter": 8611.83,
                "web_designer": 16142.16,
                "web_developer": 18101.65
            }
        }
    }
}
```

---

# Favorites

**Create Favorite**

- This endpoint creates a favorite for a user.

``` ruby
[POST] /api/v1/favorites

Required PARAMS:
  - favorites_params = ({
                          user_id: user.id,
                          city_id: city.id
                        })
```

Example:

``` ruby
[POST] /api/v1/favorites

- PARAMS
  - JSON.generate(favorite: favorites_params)        
```

Response: 

```json

```

---

**Return Favorite**

- This endpoint will return a favorite for a user.

``` ruby
[GET] /api/v1/favorites/:user_id

```

Example:

``` ruby
[GET] /api/v1/favorites/33
        
```

Response: 

```json

```

---

**Delete Favorite**

- This endpoint deletes a favorite for a user.

``` ruby
[DELETE] /api/v1/favorites

Required PARAMS:
  - { user_id: user.id, city_id: city_3.id}
```

Example:

``` ruby
[DELETE] /api/v1/favorites

- PARAMS
  - { user_id: 13, city_id: 57}        
```

Response: 

```json

```
---

Summary of the project, backend resources and technologies, link to Turing project expectations
List all endpoints and show example json bodies
Link all repos and hosted apps
List contributors with Linkdin and Github
