/* 
1. Which restaurants are in wayland?
Query: restaurant_location(X, wayland).
2. Which restaurants have italian cuisine?
Query: restaurant_type(X, italian_restaurant).
3. Which kind of restaurants serve snapper?
4. Which kinds of restaurants serves rice ?
5. Where can you get served a vegetarian dish in fox_point?
Harder (Optional)
6. Which restaurants serve both vegetarian and meat dishes?
7. Which areas have both a chinese restaurant and a mexican restaurant?
8. Which restaurants on thayer_street or in wayland serve meat dishes?
9. Which restaurants in wayland don't serve bread?
10. Which areas have more than one restaurant of some type of cuisine?
11. Which areas have more than one restaurant serving noodles?
*/


% predicates


servesALL(american restaurants,[salad, steak, sandwiches, burgers, fried chicken]).

servesALL(burger_place_restaurants,[burgers, fries, onion_rings]).

servesALL(chinese_restaurants,[eggrolls, rice, shrimp, soup, noodles]).

servesALL(indian_restaurants,[papadam, bagan_bharta, rice, tandoori, naan]).

servesALL(italian_restaurants,[salad, pasta, cioppino, snapper, bread, garlic_bread]).

servesALL(japanese_restaurants,[sashimi, rice, tempura, noodles]).

servesALL(mediterranean_restaurants,[gyros, hummus, pita, falafel]).

servesALL(mexican_restaurants,[tacos, beans, rice, enchiladas, fish_tacos]).

servesALL(pizza_place_restaurants,[pizza, salad, garlic_bread]).

servesALL(thai_restaurants,[rice, noodles, larb, pad_thai]).

servesALL(american_restaurants,[salad,steak,burgers]).


restaurant_location(yans, thayer_street).

restaurant_location(pizza_marvin, fox_point).

restaurant_location(bajas, thayer_street).

restaurant_location(andreas, thayer_street).

restaurant_location(chinatown, thayer_street).

restaurant_location(kabob_n_curry, thayer_street).

restaurant_location(waterman_grille, wayland).

restaurant_location(dolores, fox_point).

restaurant_location(tallulahs, fox_point).

restaurant_location(red_stripe, wayland).

restaurant_location(pasta_beach, wayland).

restaurant_location(haruki, wayland).

restaurant_location(heng, thayer_street).

restaurant_location(mikes, thayer_street).

restaurant_location(east_side_pocokets, thayer_street).

restaurant_location(bees, fox_point).

restaurant_location(shake_shac thayer_street).

restaurant_location(al_forno, fox_point).

restaurant_location(lims, wayland).


restaurant_type(yans, chinese_restaurant).
restaurant_type(pizza_marvin, pizza_place_restaurant).
restaurant_type(bajas, mexican_restaurant).
restaurant_type(andreas, mediterranean_restaurant).
restaurant_type(chinatown, chinese_restaurant).
restaurant_type(kabob_n_curry, indian_restaurant).
restaurant_type(waterman_grille, american_restaurant).
restaurant_type(dolores, mexican_restaurant).
restaurant_type(tallulahs, mexican_restaurant).
restaurant_type(red_stripe, american_restaurant).
restaurant_type(pasta_beach, italian_restaurant).
restaurant_type(haruki, japanese_restaurant).
restaurant_type(heng, thai_restaurant).
restaurant_type(mikes, pizza_place_restaurant).
restaurant_type(east_side_pocokets, mediterranean_restaurant).
restaurant_type(bees, thai_restaurant).
restaurant_type(shake_shack, burger_place_restaurant).
restaurant_type(al_forno, italian_restaurant).
restaurant_type(lims, thai_restaurant).



/*
location(Name, Location):-
    restaurant(Name, Location).
*/


serves(Kind, Dish) :-
    servesALL(Kind, Dishes),
    member(Dish, Dishes).