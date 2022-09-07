# Dude How's My City

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Dude-Hows-My-City/dhmc_be_rails/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Dude-Hows-My-City/dhmc_be_rails/tree/main) 


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

```

Example:

``` ruby
[POST] /api/v1/favorites

- BODY
  - {
    "user_id" : 3,
    "city_id" : 1
    }      
```

---

**Return Favorite**

- This endpoint will return a favorite for a user.

``` ruby
[GET] /api/v1/favorites/:user_id

```

Example:

``` ruby
[GET] /api/v1/favorites/3
        
```

Response: 

```json
{
    "data": [
        {
            "id": "1",
            "type": "city",
            "attributes": {
                "name": "Aarhus",
                "full_name": "Aarhus, Denmark",
                "summary": {
                    "continent": "Europe",
                    "summary": "<p>Aarhus, Denmark, is among the top cities with a <b>free business environment</b>.\n\n    \n        According to our city rankings, this is a good place to live with high ratings in <b>safety</b>, <b>healthcare</b> and <b>environmental quality</b>.\n    \n\n    \n</p>\n\n"
                },
                "scores": {
                    "housing": 6.13,
                    "cost_of_living": 4.02,
                    "startups": 2.83,
                    "venture_capital": 2.51,
                    "travel_connectivity": 3.54,
                    "commute": 6.31,
                    "business_freedom": 9.94,
                    "safety": 9.62,
                    "health_care": 9.13,
                    "education": 5.37,
                    "environmental_quality": 7.63,
                    "economy": 4.89,
                    "taxation": 5.07,
                    "internet_access": 8.37,
                    "leisure_and_culture": 3.19,
                    "tolerance": 9.74,
                    "outdoors": 4.13,
                    "teleport_city_score": 65.09
                },
                "details": {
                    "image_photographer": "Calvin Smith",
                    "image_web_url": "https://d13k13wj6adfdf.cloudfront.net/urban_areas/aarhus_web-1462c370b8.jpg",
                    "image_mobile_url": "https://d13k13wj6adfdf.cloudfront.net/urban_areas/aarhus-67c2f42848.jpg",
                    "population_size_in_millions": 0.2502,
                    "average_costs": {
                        "consumer_price_index": 0.4015,
                        "apples_per_kg": 2.9,
                        "bread": 0.87,
                        "cappuccino": 5.6,
                        "cinema": 17.0,
                        "fitness_club": 37.0,
                        "import_beer": 1.7,
                        "public_transport": 62.0,
                        "lunch_meal": 15.0,
                        "taxi": 13.0,
                        "restaurant_price_index": 97.32
                    },
                    "culture": {
                        "art_galleries": 51,
                        "movie_theaters": 17,
                        "comedy_clubs": 12,
                        "concert_venues": 95,
                        "historical_sites": 13,
                        "museums": 18,
                        "performing_arts_venues": 56,
                        "sports_venues": 21,
                        "zoos": 2
                    },
                    "housing": {
                        "large_apartment": 1700.0,
                        "medium_apartment": 1300.0,
                        "small_apartment": 840.0
                    }
                },
                "salaries": {
                    "account_manager": 54368.0,
                    "accountant": 73755.52,
                    "administrative_assitant": 62762.85,
                    "architect": 97607.28,
                    "attorney": 63642.41,
                    "business_analyst": 61267.29,
                    "business_development": 78989.63,
                    "c_level_executive": 57751.15,
                    "cashier": 63075.57,
                    "chef": 44090.01,
                    "chemical_engineer": 83469.07,
                    "civil_engineer": 68784.19,
                    "content_marketing": 36104.05,
                    "copywriter": 49774.12,
                    "customer_support": 33975.33,
                    "data_analyst": 60259.69,
                    "data_scientist": 63227.33,
                    "dentist": 118741.64,
                    "electrical_engineer": 55313.12,
                    "executive_assistant": 36619.27,
                    "fashion_designer": 93932.37,
                    "finance_manager": 76056.34,
                    "financial_analyst": 106273.34,
                    "graphic_designer": 44147.55,
                    "hardware_engineer": 71176.5,
                    "human_resources_manager": 43270.64,
                    "it_manager": 81535.4,
                    "industrial_designer": 62463.39,
                    "interior_designer": 40602.38,
                    "lecturer": 40754.84,
                    "marketing_manager": 46747.17,
                    "mechanical_engineer": 56796.36,
                    "mobile_developer": 93582.69,
                    "nurse": 44119.07,
                    "office_manager": 69290.74,
                    "operations_manager": 42087.59,
                    "pharmacist": 71880.44,
                    "physician": 54539.76,
                    "postdoctoral_researcher": 59455.12,
                    "product_manager": 68398.62,
                    "project_manager": 64373.85,
                    "qa_engineer": 47092.75,
                    "receptionist": 112167.87,
                    "research_scientist": 57721.08,
                    "sales_manager": 48356.07,
                    "software_engineer": 59061.69,
                    "systems_administrator": 45060.78,
                    "teacher": 34667.72,
                    "ux_designer": 56659.25,
                    "waiter": 20431.28,
                    "web_designer": 47304.94,
                    "web_developer": 42867.45
                }
            }
        }
    ]
}
```

---

**Delete Favorite**

- This endpoint deletes a favorite for a user.

``` ruby
[DELETE] /api/v1/favorites

```

Example:

``` ruby
[DELETE] /api/v1/favorites

- BODY
  - {
    "user_id" : 3,
    "city_id" : 1
    }       
```

---

Summary of the project, backend resources and technologies, link to Turing project expectations
List all endpoints and show example json bodies
Link all repos and hosted apps
List contributors with Linkdin and Github
