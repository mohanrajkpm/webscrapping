# README

Software Requirements
---------------------

* Install Rails 7

* Install Ruby version 3.X

* Instal Postgresql 

Cron Job Setup
--------------

Rake task

* Run the rake task manually / automatically

rails websitescrap:scrap - For manual


Marketplace MagicPin
--------------------
    
    currently we are using MagicPin and we are fetching restaurants associated categories of products as well.

API Documentation
=================

a. Discovering Restaurant by location
----------------------------------

    Displaying all restaurants for specific location. In order we need to pass location over the request url

Request URL
-----------

http://localhost:3000/api/v1/restaurants?location=Miyapur


Method
------

GET

Response
--------

{
    "data": [
        {
            "id": "6",
            "type": "restaurant",
            "attributes": {
                "name": "Chef Bakers"
            }
        }
    ]
}


b. Show Restaurants's categories with no of products, avg price, min and max
-------------------------------------------------------------------------

    Displaying all categories based on specific category of number of products, average price, min price and max price

Request URL:
------------
http://localhost:3000/api/v1/categories?restaurant=Chef Bakers

Method
------

GET

Response
--------

{
    "data": [
        {
            "id": "105",
            "type": "category",
            "attributes": {
                "name": "Recommended",
                "number_of_items": 1,
                "avg_price": 149,
                "max_price": 149,
                "min_price": 149
            }
        },
        {
            "id": "106",
            "type": "category",
            "attributes": {
                "name": "Rice Bowl",
                "number_of_items": 5,
                "avg_price": 255,
                "max_price": 299,
                "min_price": 229
            }
        },
        {
            "id": "107",
            "type": "category",
            "attributes": {
                "name": "Platters",
                "number_of_items": 4,
                "avg_price": 279,
                "max_price": 299,
                "min_price": 249
            }
        },
        {
            "id": "108",
            "type": "category",
            "attributes": {
                "name": "Sizzlers",
                "number_of_items": 2,
                "avg_price": 309,
                "max_price": 349,
                "min_price": 269
            }
        },
        {
            "id": "109",
            "type": "category",
            "attributes": {
                "name": "Salads",
                "number_of_items": 6,
                "avg_price": 274,
                "max_price": 299,
                "min_price": 249
            }
        },
        {
            "id": "110",
            "type": "category",
            "attributes": {
                "name": "Chinese",
                "number_of_items": 1,
                "avg_price": 149,
                "max_price": 149,
                "min_price": 149
            }
        },
        {
            "id": "111",
            "type": "category",
            "attributes": {
                "name": "Pizza And Pasta",
                "number_of_items": 8,
                "avg_price": 285,
                "max_price": 349,
                "min_price": 249
            }
        },
        {
            "id": "112",
            "type": "category",
            "attributes": {
                "name": "Burgers And Sandwiches",
                "number_of_items": 19,
                "avg_price": 166,
                "max_price": 229,
                "min_price": 89
            }
        },
        {
            "id": "113",
            "type": "category",
            "attributes": {
                "name": "Snacks",
                "number_of_items": 16,
                "avg_price": 147,
                "max_price": 199,
                "min_price": 99
            }
        },
        {
            "id": "114",
            "type": "category",
            "attributes": {
                "name": "Rolls",
                "number_of_items": 4,
                "avg_price": 136,
                "max_price": 149,
                "min_price": 99
            }
        },
        {
            "id": "115",
            "type": "category",
            "attributes": {
                "name": "Waffles",
                "number_of_items": 5,
                "avg_price": 219,
                "max_price": 249,
                "min_price": 199
            }
        },
        {
            "id": "116",
            "type": "category",
            "attributes": {
                "name": "Desserts",
                "number_of_items": 10,
                "avg_price": 139,
                "max_price": 159,
                "min_price": 120
            }
        }
    ]
}


c.Show Products of the Category
-------------------------------

    Display all products with their category

Request URL
-----------

http://localhost:3000/api/v1/items



Method:
-------

GET

Response
--------

{
    "data": [
        {
            "id": "752",
            "type": "item",
            "attributes": {
                "title": "Spinach Corn Cheese Omelette [3 Eggs]",
                "price": 149,
                "description": "Served with grilled tomato and potato wedges.",
                "category_name": "Recommended",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "753",
            "type": "item",
            "attributes": {
                "title": "Veg Cheese Dumpling Rice Bowl",
                "price": 249,
                "description": "Cheesy veg balls served with flavored rice and makhani sauce.",
                "category_name": "Rice Bowl",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "754",
            "type": "item",
            "attributes": {
                "title": "Chicken Dumpling Rice Bowl",
                "price": 229,
                "description": "Juicy cheesy chicken dumplings served with flavored rice and makhani s",
                "category_name": "Rice Bowl",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "755",
            "type": "item",
            "attributes": {
                "title": "Chicken Steak Rice Bowl",
                "price": 249,
                "description": "Tawa tossed chicken seekh kabab served with herbed rice and curry sauc",
                "category_name": "Rice Bowl",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "756",
            "type": "item",
            "attributes": {
                "title": "Chicken Leg Rice Bowl",
                "price": 249,
                "description": "Crumb fried chicken served with flavored rice and makhani sauce.",
                "category_name": "Rice Bowl",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "757",
            "type": "item",
            "attributes": {
                "title": "Chicken Tikka Masala Rice Bowl",
                "price": 299,
                "description": "Chunks of chicken marinated in ground spices yoghurt and served with m",
                "category_name": "Rice Bowl",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "758",
            "type": "item",
            "attributes": {
                "title": "Broccoli And Mushroom Rice Platter",
                "price": 249,
                "description": "Broccoli and mushroom in rich sauce served with grilled vegetables and",
                "category_name": "Platters",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "759",
            "type": "item",
            "attributes": {
                "title": "Pepper Mushroom Sauce Platter",
                "price": 269,
                "description": "Mushroom in spicy pepper sauce served with buttered parsley rice.",
                "category_name": "Platters",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "760",
            "type": "item",
            "attributes": {
                "title": "Pepper Chicken With Herbed Rice",
                "price": 299,
                "description": "Peppered chicken and mushroom in brown sauce.",
                "category_name": "Platters",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "761",
            "type": "item",
            "attributes": {
                "title": "Chicken And Mushroom Rice Platter",
                "price": 299,
                "description": "Creamy chicken and mushroom served with diced potatoes and grilled veg",
                "category_name": "Platters",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "762",
            "type": "item",
            "attributes": {
                "title": "Thai Green Curry Sizzler",
                "price": 269,
                "description": "Seasoned mixed vegetables served with jasmine rice in a light coconut",
                "category_name": "Sizzlers",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "763",
            "type": "item",
            "attributes": {
                "title": "Poulet Champignon Sizzler",
                "price": 349,
                "description": "Marinated tended crumb fried chicken breast crowned with brown mushroo",
                "category_name": "Sizzlers",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "764",
            "type": "item",
            "attributes": {
                "title": "Veg Caesar Salad",
                "price": 249,
                "description": "Crisp lettuce enrolled in caesar dressing, garlic croutons Parmesan dr",
                "category_name": "Salads",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "765",
            "type": "item",
            "attributes": {
                "title": "Veg Hawaiian Salad",
                "price": 249,
                "description": "Spicy grilled pineapple and paneer folded with crispy iceberg lettuce,",
                "category_name": "Salads",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "766",
            "type": "item",
            "attributes": {
                "title": "Veg Fried Noodles Salad",
                "price": 249,
                "description": "Crispy fried noodles tossed with oriental smoky vegetables.",
                "category_name": "Salads",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "767",
            "type": "item",
            "attributes": {
                "title": "Chicken Caesar Salad",
                "price": 299,
                "description": "Topped with seasoned chicken breast and smoked chicken dice.",
                "category_name": "Salads",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "768",
            "type": "item",
            "attributes": {
                "title": "Chicken Hawaiian Salad",
                "price": 299,
                "description": "Spicy grilled pineapple and chicken folded with crispy iceberg lettuce",
                "category_name": "Salads",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "769",
            "type": "item",
            "attributes": {
                "title": "Chicken Fried Noodles Salad",
                "price": 299,
                "description": "Crispy fried noodles tossed with oriental smoky chicken.",
                "category_name": "Salads",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "770",
            "type": "item",
            "attributes": {
                "title": "Crispy Potato With Yellow Cheese And Mexican Salsa",
                "price": 149,
                "description": "",
                "category_name": "Chinese",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "771",
            "type": "item",
            "attributes": {
                "title": "Veg Al Arrabbiata Pasta",
                "price": 249,
                "description": "Italian spicy tomato sauce made with tomatoes, garlic, red chilli pepp",
                "category_name": "Pizza And Pasta",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "772",
            "type": "item",
            "attributes": {
                "title": "Mushroom Alfredo Pasta",
                "price": 249,
                "description": "Smooth and rich creamy cheese sauce. Served with butter garlic crostin",
                "category_name": "Pizza And Pasta",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "773",
            "type": "item",
            "attributes": {
                "title": "Pesto Pasta",
                "price": 269,
                "description": "Basil pesto sauce, tossed in olive oil and your favorite pasta. Served",
                "category_name": "Pizza And Pasta",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "774",
            "type": "item",
            "attributes": {
                "title": "Veg Mexican Hot N Spice Pasta",
                "price": 269,
                "description": "Paprika salsa folded with spicy tomato sauce, bell peppers, olives, Am",
                "category_name": "Pizza And Pasta",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "775",
            "type": "item",
            "attributes": {
                "title": "Veg Lasagna",
                "price": 299,
                "description": "Lasagna filled with ratatouille, tossed spinach, creamy button mushroo",
                "category_name": "Pizza And Pasta",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "776",
            "type": "item",
            "attributes": {
                "title": "Chicken Alfredo Pasta",
                "price": 299,
                "description": "Smooth and rich creamy cheese sauce. Served with butter garlic crostin",
                "category_name": "Pizza And Pasta",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "777",
            "type": "item",
            "attributes": {
                "title": "Grilled Chicken Mexican Hot N Spice Pasta",
                "price": 299,
                "description": "Paprika salsa folded with spicy tomato sauce, bell peppers, olives, Am",
                "category_name": "Pizza And Pasta",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "778",
            "type": "item",
            "attributes": {
                "title": "Chicken Lasagna",
                "price": 349,
                "description": "Tri layered lasagna filled with chicken bolognese, basil pesto and roa",
                "category_name": "Pizza And Pasta",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "779",
            "type": "item",
            "attributes": {
                "title": "Grilled Sundried Tomato Basil Cheese Sandwich",
                "price": 99,
                "description": "Melted Cheddar cheese dusted with basil and tomato in brown bread.",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "780",
            "type": "item",
            "attributes": {
                "title": "Rock Salt Olive Focaccia Sandwich",
                "price": 149,
                "description": "Italian olive bread with grated soft cheese tossed peppers, corn and p",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "781",
            "type": "item",
            "attributes": {
                "title": "Gateway Deccan Sandwich",
                "price": 149,
                "description": "Mayo butter spread toast with spiced potatoes, cheese and hand picked",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "782",
            "type": "item",
            "attributes": {
                "title": "TLC Sandwich",
                "price": 99,
                "description": "Tender loving care. Tomato, lettuce, cucumber and cheese.",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "783",
            "type": "item",
            "attributes": {
                "title": "Crispy Chicken Sub Roll Sandwich",
                "price": 180,
                "description": "Breaded crispy fried chicken with oozy mayo in panini sauce.",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "784",
            "type": "item",
            "attributes": {
                "title": "Tandoori Chicken Tikka Sandwich",
                "price": 199,
                "description": "Indian style spiced grilled chicken in kasoori methi, cheese and foot",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "785",
            "type": "item",
            "attributes": {
                "title": "Country Bread Chicken Bacon And Parmesan Sandwich",
                "price": 219,
                "description": "Thick crust rye bread stuffed with Parmesan cheese sauce and smoked ch",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "786",
            "type": "item",
            "attributes": {
                "title": "Chipotle Chicken Caesar Sandwich",
                "price": 180,
                "description": "Chicken caesar salad bound with traditional chipotle chilli sauce in s",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "787",
            "type": "item",
            "attributes": {
                "title": "Schezwan Chicken Sandwich",
                "price": 199,
                "description": "Crispy chicken tossed with schezwan sauce bedded in iceberg lettuce on",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "788",
            "type": "item",
            "attributes": {
                "title": "Chef Bakers Club Sandwich",
                "price": 229,
                "description": "Succulent juicy chicken, fried egg, layered in toasted bread with butt",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "789",
            "type": "item",
            "attributes": {
                "title": "Veg And Cheese Burger",
                "price": 99,
                "description": "Oven fresh burger buns filled with vegetable patty, cucumber, tomato a",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "790",
            "type": "item",
            "attributes": {
                "title": "Aloo Tikki Burger",
                "price": 89,
                "description": "Mumbai style spiced aloo tikki and cheese burger.",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "791",
            "type": "item",
            "attributes": {
                "title": "Chicken And Cheese Burger",
                "price": 119,
                "description": "Cheesy chicken burger, bedded on Iceberg and sliced tomatoes.",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "792",
            "type": "item",
            "attributes": {
                "title": "Barbecue Chicken Burger",
                "price": 169,
                "description": "Barbecued chicken patty in iceberg with onion rings jalapeno and tomat",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "793",
            "type": "item",
            "attributes": {
                "title": "Peri Peri Crispy Chicken Burger",
                "price": 180,
                "description": "Tender spicy delight of chicken in a soft bun.",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "794",
            "type": "item",
            "attributes": {
                "title": "Supreme Chicken Burger With Wedges",
                "price": 210,
                "description": "Chicken patty, chicken salami, fried egg, cheese, tomato, iceberg, jal",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "795",
            "type": "item",
            "attributes": {
                "title": "Tandoori Chicken Tikka Burger",
                "price": 199,
                "description": "Traditional smoky flavored chicken fillet in bb.",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "796",
            "type": "item",
            "attributes": {
                "title": "Chef Bakers Signature Burger With Fries",
                "price": 220,
                "description": "House made teriyaki marinate chicken steak served with fries.",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "797",
            "type": "item",
            "attributes": {
                "title": "Homemade Chicken Burger",
                "price": 169,
                "description": "Granny wayi chicken mince patty and cheese.",
                "category_name": "Burgers And Sandwiches",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "798",
            "type": "item",
            "attributes": {
                "title": "Natural Omelette [3 Eggs]",
                "price": 99,
                "description": "Served with grilled tomato and potato wedges.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "799",
            "type": "item",
            "attributes": {
                "title": "Masala Omelette [3 Eggs]",
                "price": 129,
                "description": "Served with grilled tomato and potato wedges.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "800",
            "type": "item",
            "attributes": {
                "title": "Mushroom Omelette [3 Eggs]",
                "price": 129,
                "description": "Served with grilled tomato and potato wedges.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "801",
            "type": "item",
            "attributes": {
                "title": "Spinach Corn Cheese Omelette [3 Eggs]",
                "price": 149,
                "description": "Served with grilled tomato and potato wedges.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "802",
            "type": "item",
            "attributes": {
                "title": "Double Cheese Omelette [3 Eggs]",
                "price": 149,
                "description": "Served with grilled tomato and potato wedges.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "803",
            "type": "item",
            "attributes": {
                "title": "Smoked Chicken Omelette [3 Eggs]",
                "price": 149,
                "description": "Served with grilled tomato and potato wedges.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "804",
            "type": "item",
            "attributes": {
                "title": "French Fries",
                "price": 99,
                "description": "Served with dips.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "805",
            "type": "item",
            "attributes": {
                "title": "Crunchy Peri Peri Fries",
                "price": 130,
                "description": "Served with dips.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "806",
            "type": "item",
            "attributes": {
                "title": "Hot Salsa Jalapeno Fries",
                "price": 130,
                "description": "Served with dips.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "807",
            "type": "item",
            "attributes": {
                "title": "Homemade Onion Rings",
                "price": 149,
                "description": "",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "808",
            "type": "item",
            "attributes": {
                "title": "Paneer Kurkure With Hot Sauce",
                "price": 199,
                "description": "Accompanied with dips.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "809",
            "type": "item",
            "attributes": {
                "title": "Chilli Cheese Toast In French Bread",
                "price": 199,
                "description": "Accompanied with dips.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "810",
            "type": "item",
            "attributes": {
                "title": "Garlic Herb Toast",
                "price": 149,
                "description": "Accompanied with dips.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "811",
            "type": "item",
            "attributes": {
                "title": "Red Pepper Cheese Balls",
                "price": 149,
                "description": "Accompanied with dips.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "812",
            "type": "item",
            "attributes": {
                "title": "Crispy Corn Nachos",
                "price": 149,
                "description": "Accompanied with dips.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "813",
            "type": "item",
            "attributes": {
                "title": "Chicken Nuggets",
                "price": 199,
                "description": "Accompanied with dips.",
                "category_name": "Snacks",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "814",
            "type": "item",
            "attributes": {
                "title": "Paneer Tikka Roll",
                "price": 149,
                "description": "Delicious paneer tikka with mint in paratha.",
                "category_name": "Rolls",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "815",
            "type": "item",
            "attributes": {
                "title": "Garden Greens Roll",
                "price": 99,
                "description": "Mesclun garden greens with mint mayo sauce.",
                "category_name": "Rolls",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "816",
            "type": "item",
            "attributes": {
                "title": "Grilled Chicken Roll With Cilantro Sauce",
                "price": 149,
                "description": "Paratha rolls with grilled chicken in tahini cilantro.",
                "category_name": "Rolls",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "817",
            "type": "item",
            "attributes": {
                "title": "Chicken Tikka Roll",
                "price": 149,
                "description": "Boneless chicken tikka with mint mayo rolled.",
                "category_name": "Rolls",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "818",
            "type": "item",
            "attributes": {
                "title": "Fig And Honey With Vanilla Cream Waffle",
                "price": 199,
                "description": "A crisp golden Belgian waffle topped with figs and honey. fresh cream",
                "category_name": "Waffles",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "819",
            "type": "item",
            "attributes": {
                "title": "Toffeed Banan Waffle",
                "price": 199,
                "description": "Caramelized banana with choco/toffeed syrup. Crispy and home made.",
                "category_name": "Waffles",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "820",
            "type": "item",
            "attributes": {
                "title": "Very Very Berry Waffle",
                "price": 249,
                "description": "Golden brown waffle topped with wild berries, fresh cream and dusted w",
                "category_name": "Waffles",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "821",
            "type": "item",
            "attributes": {
                "title": "Nutty Blast Waffle",
                "price": 249,
                "description": "Topped with hazelnut sauce roasted nuts and ice cream. Crispy and home",
                "category_name": "Waffles",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "822",
            "type": "item",
            "attributes": {
                "title": "Red Velvet Waffle",
                "price": 199,
                "description": "Unique flavored. Must try. Crispy and home made.",
                "category_name": "Waffles",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "823",
            "type": "item",
            "attributes": {
                "title": "Devil In Glass",
                "price": 149,
                "description": "Dbc with hot chocolate sauce soaked, topped with chocolate ice cream a",
                "category_name": "Desserts",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "824",
            "type": "item",
            "attributes": {
                "title": "Red Velvet Magic",
                "price": 159,
                "description": "Red velvet cake with strawberry ice cream, red coulis and gems.",
                "category_name": "Desserts",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "825",
            "type": "item",
            "attributes": {
                "title": "Baked Apple Pie And Vanilla Parfait",
                "price": 120,
                "description": "Hot pie topped with vanilla ice cream and rosette.",
                "category_name": "Desserts",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "826",
            "type": "item",
            "attributes": {
                "title": "Hot Chocolate Brownie",
                "price": 120,
                "description": "Brownie drowned in chocolate sauce and vanilla ice cream.",
                "category_name": "Desserts",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "827",
            "type": "item",
            "attributes": {
                "title": "German Forest Sundae",
                "price": 149,
                "description": "Chocolate ice cream topped with cherry filling, vanilla ice cream, fre",
                "category_name": "Desserts",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "828",
            "type": "item",
            "attributes": {
                "title": "Duet Hearts Sundae",
                "price": 129,
                "description": "Vanilla and strawberry ice cream loaded with sauces and chocolate hear",
                "category_name": "Desserts",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "829",
            "type": "item",
            "attributes": {
                "title": "Froot Of Love Sundae",
                "price": 149,
                "description": "Strawberry and mango ice cream with red coulis and fruit loops/jujubes",
                "category_name": "Desserts",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "830",
            "type": "item",
            "attributes": {
                "title": "Banana Split Sundae",
                "price": 150,
                "description": "Split banana with tri flavored ice cream, sauce and nuts.",
                "category_name": "Desserts",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "831",
            "type": "item",
            "attributes": {
                "title": "Rockey Road Sundae",
                "price": 149,
                "description": "Chocolate ice cream [large scoop] with nuts and marshmallows.",
                "category_name": "Desserts",
                "restaurant_name": "Chef Bakers"
            }
        },
        {
            "id": "832",
            "type": "item",
            "attributes": {
                "title": "Midnight Dream Sundae",
                "price": 120,
                "description": "Blackcurrant ice cream with nuts and curaco.",
                "category_name": "Desserts",
                "restaurant_name": "Chef Bakers"
            }
        }
    ]
}

d.Show Product in Detail
------------------------

    Displaying specic product details. In order we need to pass product over request url.

Request URL
-----------

http://localhost:3000/api/v1/items/752

Method:
-------
GET


Response
--------
{
    "data": {
        "id": "752",
        "type": "item",
        "attributes": {
            "title": "Spinach Corn Cheese Omelette [3 Eggs]",
            "price": 149,
            "description": "Served with grilled tomato and potato wedges.",
            "category_name": "Recommended",
            "restaurant_name": "Chef Bakers"
        }
    }
}



    




