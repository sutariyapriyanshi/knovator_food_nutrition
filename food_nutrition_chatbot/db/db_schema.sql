CREATE DATABASE food_nutrition;

USE food_nutrition;

CREATE TABLE sample (
  id INT,
  name VARCHAR(255),
  age INT
);

CREATE TABLE food_nutrition (
    Food_item VARCHAR(255) PRIMARY KEY,
    Calories INT,
    Fat_Calories INT,
    Total_Fat_g FLOAT,
    Total_Fat_DV INT,
    Sodium_g FLOAT,
    Sodium_DV INT,
    Potassium_g FLOAT,
    Potassium_DV INT,
    Total_Carbohydrate_g FLOAT,
    Total_Carbohydrate_DV INT,
    Dietary_Fiber_g FLOAT,
    Dietary_Fiber_DV INT,
    Sugars FLOAT,
    Protein FLOAT,
    Vitamin_A INT,
    Vitamin_C INT,
    Calcium INT,
    Iron INT,
    Saturated_Fat_g FLOAT,
    Saturated_Fat_DV INT,
    Cholesterol_g FLOAT,
    Cholesterol_DV INT,
    Food_Type VARCHAR(255)
);

SELECT * FROM food_nutrition;

INSERT INTO food_nutrition (Food_Item, Calories, Fat_Calories, Total_Fat_g, Total_Fat_DV, Sodium_g, Sodium_DV, Potassium_g, Potassium_DV, Total_Carbohydrate_g, Total_Carbohydrate_DV, Dietary_Fiber_g, Dietary_Fiber_DV, Sugars, Protein, Vitamin_A, Vitamin_C, Calcium, Iron, Saturated_Fat_g, Saturated_Fat_DV, Cholesterol_g, Cholesterol_DV, Food_Type)
VALUES
('Asparagus, 5 spears (93 g/3.3 oz)', 20, 0, 0, 0, 0, 0, 230, 7, 4, 1, 2, 8, 2, 2, 10, 15, 2, 2, 0, 0, 0, 0, 'Vegetables'),
('Bell Pepper, 1 medium (148 g/5.3 oz)', 25, 0, 0, 0, 40, 2, 220, 6, 6, 2, 2, 8, 4, 1, 4, 190, 2, 4, 0, 0, 0, 0, 'Vegetables'),
('Broccoli, 1 medium stalk (148 g/5.3 oz)', 45, 0, 0.5, 1, 80, 3, 460, 13, 8, 3, 3, 12, 2, 4, 6, 220, 6, 6, 0, 0, 0, 0, 'Vegetables'),
('Carrot, 1 carrot, 7" long, 1 1/4" diameter (78 g/2.8 oz)', 30, 0, 0, 0, 60, 3, 250, 7, 7, 2, 2, 8, 5, 1, 110, 10, 2, 2, 0, 0, 0, 0, 'Vegetables'),
('Cauliflower, 1/6 medium head (99 g/3.5 oz)', 25, 0, 0, 0, 30, 1, 270, 8, 5, 2, 2, 8, 2, 2, 0, 100, 2, 2, 0, 0, 0, 0, 'Vegetables'),
('Celery, 2 medium stalks (110 g/3.9 oz)', 15, 0, 0, 0, 115, 5, 260, 7, 4, 1, 2, 8, 2, 0, 10, 15, 4, 2, 0, 0, 0, 0, 'Vegetables'),
('Cucumber, 1/3 medium (99 g/3.5 oz)', 10, 0, 0, 0, 0, 0, 140, 4, 2, 1, 1, 4, 1, 1, 4, 10, 2, 2, 0, 0, 0, 0, 'Vegetables'),
('Green (Snap) Beans, 3/4 cup cut (83 g/3.0 oz)', 20, 0, 0, 0, 0, 0, 200, 6, 5, 2, 3, 12, 2, 1, 4, 10, 4, 2, 0, 0, 0, 0, 'Vegetables'),
('Green Cabbage, 1/12 medium head (84 g/3.0 oz)', 25, 0, 0, 0, 20, 1, 190, 5, 5, 2, 2, 8, 3, 1, 0, 70, 4, 2, 0, 0, 0, 0, 'Vegetables'),
('Green Onion, 1/4 cup chopped (25 g/0.9 oz)', 10, 0, 0, 0, 10, 0, 70, 2, 2, 1, 1, 4, 1, 0, 2, 8, 2, 2, 0, 0, 0, 0, 'Vegetables'),
('Iceberg Lettuce, 1/6 medium head (89 g/3.2 oz)', 10, 0, 0, 0, 10, 0, 125, 4, 2, 1, 1, 4, 2, 1, 6, 6, 2, 2, 0, 0, 0, 0, 'Vegetables'),
('Leaf Lettuce, 1 1/2 cups shredded (85 g/3.0 oz)', 15, 0, 0, 0, 35, 1, 170, 5, 2, 1, 1, 4, 1, 1, 130, 6, 2, 4, 0, 0, 0, 0, 'Vegetables'),
('Mushrooms, 5 medium (84 g/3.0 oz)', 20, 0, 0, 0, 15, 0, 300, 9, 3, 1, 1, 4, 0, 3, 0, 2, 0, 2, 0, 0, 0, 0, 'Vegetables'),
('Onion, 1 medium (148 g/5.3 oz)', 45, 0, 0, 0, 5, 0, 190, 5, 11, 4, 3, 12, 9, 1, 0, 20, 4, 4, 0, 0, 0, 0, 'Vegetables'),
('Potato, 1 medium (148 g/5.3 oz)', 110, 0, 0, 0, 0, 0, 620, 18, 26, 9, 2, 8, 1, 3, 0, 45, 2, 6, 0, 0, 0, 0, 'Vegetables'),
('Radishes, 7 radishes (85 g/3.0 oz)', 10, 0, 0, 0, 55, 2, 190, 5, 3, 1, 1, 4, 2, 0, 0, 30, 2, 2, 0, 0, 0, 0, 'Vegetables'),
('Summer Squash, 1/2 medium (98 g/3.5 oz)', 20, 0, 0, 0, 0, 0, 260, 7, 4, 1, 2, 8, 2, 1, 6, 30, 2, 2, 0, 0, 0, 0, 'Vegetables'),
('Sweet Corn, kernels from 1 medium ear (90 g/3.2 oz)', 90, 20, 2.5, 4, 0, 0, 250, 7, 18, 6, 2, 8, 5, 4, 2, 10, 0, 2, 0, 0, 0, 0, 'Vegetables'),
('Sweet Potato, 1 medium, 5" long, 2" diameter (130 g/4.6 oz)', 100, 0, 0, 0, 70, 3, 440, 13, 23, 8, 4, 16, 2, 380, 4, 4, 2, 4, 0, 0, 0, 0, 'Vegetables'),
('Tomato, 1 medium (148 g/5.3 oz)', 25, 0, 0, 0, 20, 1, 340, 10, 5, 2, 1, 4, 3, 1, 20, 40, 2, 4, 0, 0, 0, 0,'Vegetables'),
('Apple, 1 large (242 g/8 oz)',	130, 0, 0,	0,	0,	0,	260	,7,	34,	11,	5,	20,	25,	1,	2,	8,	2,	2,	0,	0,	0,	0,	'Fruits'),
('Avocado, California,1/5 medium (30 g/1.1 oz)',	50,	35,	4.5,	7,	0,	0,	140,	4,	3,	1,	1,	4,	0,	1,	0,	4,	0,	2,	0,	0,	0,	0	,'Fruits'),
('Banana, 1 medium (126 g/4.5 oz)',	110,	0,	0,	0,	0,	0,	450,	13,	30,	10,	3,12,	19,	1,	2,	15,	0,	2,	0,	0,	0,	0,	'Fruits'),
('Cantaloupe, 1/4 medium (134 g/4.8 oz)',	50,	0,	0,	0,	20,	1,	240,	7,	12,	4,	1,	4,	11,	1,	120,	80,	2,	2,	0,	0,	0,	0	,'Fruits'),
('Grapefruit, 1/2 medium, (154 g/5.5 oz)',	60	,0,	0,	0,	0,	0,	160,	5,	15,	5,	2,	8,	11,1,	35,	100,	4,	0,	0,	0,	0,	0	,'Fruits'),
('Grapes, 3/4 cup (126 g/4.5 oz)',	90	,0	,0	,0,	15,	1,	240,	7,	23,	8,	1,	4,	20,	0,	0	,2,	2,	0,	0,	0,	0,	0,'Fruits'),
('HoneydewÊMelon 1/10 mediumÊmelon  (134 g/4.8 oz)',	50,	0,	0,	0,	30,	1,	210,	6,	12,	4,	1,	4,	11,	1,	2,	45,	2,	2,	0,	0,	0,	0	,'Fruits'),	
('Kiwifruit, 2 medium (148 g/5.3 oz)',	90,	10,	1,	2,	0,	0,	450,	13,	20,	7,	4,	16,	13,	1,	2,	240,	4,	2,	0,	0,	0,	0	,'Fruits'),
('Lemon, 1 medium (58 g/2.1 oz)',	15,	0,	0,	0,	0,	0,	75	,2,	5,	2,	2,	8,	2,	0,	0,	40,	2,	0,	0,	0,	0,	0,	'Fruits'),
('Lime, 1 medium (67 g/2.4 oz)',	20,	0	,0,	0,	0,	0,	75,	2,	7,	2,	2,	8,	0,	0,	0,	35,0,0,	0,	0,	0,	0,	'Fruits'),
('Nectarine, 1 medium (140 g/5.0 oz)',	60,	5,	0.5,	1,	0,	0,	250,	7,	15,	5,	2,	8,	11,	1,	8,	15,	0,	2,	0,	0,	0,	0	,'Fruits'),
('Orange, 1 medium (154 g/5.5 oz)',	80,	0,	0,	0,	0,	0,	250,	7,	19,	6,	3,	12,	14,	1,	2,	130,	6,	0,	0,	0,	0,	0,	'Fruits'),
('Peach, 1 medium (147 g/5.3 oz)',	60,	0,	0.5,	1,	0,	0,	230,	7,	15,	5,	2,	8,	13	,1,	6,	15,	0,	2,	0,	0,	0,	0,	'Fruits'),
('Pear, 1 medium (166 g/5.9 oz)',	100,	0,	0,	0,	0,	0,	190,	5,	26,	9,	6,	24,	16,	1,	0,	10,	2,	0,	0,	0,	0,0,	'Fruits'),
('Pineapple, 2 slices, 3" diameter,Ê3/4" thick',	50,	0,	0,	0,	10,	0,	120,	3,	13,	4,	1,	4,	10,	1,	2,	50,	2,	2,	0	,0,	0,	0,	'Fruits'),
('Plums, 2 medium (151 g/5.4 oz)',	70,	0,	0,	0,	0,	0,	230,	7,	19,	6,	2,	8,	16,	1,	8,	10,	0,	2,	0,	0,	0,	0,	'Fruits'),
('Strawberries, 8 medium (147 g/5.3 oz)',	50,	0,	0,	0,	0,	0,	170,	5,	11,	4,	2,	8,	8,	1,	0,	160,	2,	2,	0,	0,	0,	0	,'Fruits'),
('SweetÊCherries 21 cherries; 1 cup)',	100,	0,	0,	0,	0,	0,	350,	10,	26,	9,	1,	4,	16,	1,	2,	15,2,	2,	0,	0,	0,	0	,'Fruits'),
('Tangerine, 1 medium (109 g/3.9 oz)',	50,	0,	0,	0,	0,	0,	160,	5,	13,	4,	2,	8,	9,	1,	6,	45,	4,	0,	0,	0,	0,	0	,'Fruits'),
('Watermelon 1/18 medium melon; 2 cups diced pieces(280 g)',	80,	0,	0,	0,	0,	0,	270,	8,	21,	7,	1,	4,	20,	1,	30,	25,	2,	4,	0,	0,	0,	0,'Fruits'),
('Blue Crab',	100,	10,	1,	2,	330,	14,	300,	9,	0,	0,	0,	0,	0,	20,	0,	4,	10,	4,	0,	0,	95,	32	,'Seafood'),
('Catfish',	130,	60,	6,	9,	40,	2,	230,	7,	0,	0,	0,	0,	0,	17,	0,	0,	0,	0,	2,	10,	50,	17	,'Seafood'),
('Clams, about 12 small',	110,	15,	1.5,	2,	95,	4,	470,	13,	6,	2,	0,	0,	0,	17,	10,	0,	8,	30,	0,	0,	80,	27	,'Seafood'),
('Cod',	90,	5,	1,	2,	65,	3,	460,	13,	0,	0,	0,	0,	0,	20,	0,	2,	2,	2,	0,	0,	50,	17,	'Seafood'),
('Flounder/Sole',	100,	15,	1.5,	2,	100,	4,	390,	11,	0,	0,	0,	0,	0,	19,	0,	0,	2,	0,	0,	0,	55,	18	,'Seafood'),
('Haddock',	100,	10,	1,	2,	85,	4,	340,	10,	0,	0,	0,	0,	0,	21,	2,	0,	2,	6,	0,	0,	70,	23	,'Seafood'),
('Halibut',	120,	15,	2	,3,	60,	3,	500,	14,	0,	0,	0,	0,	0,	23,	4,	0,	2,	6,	0,	0,	40	,13	,'Seafood'),
('Lobster',	80,	0,	0.5,	1,	320,	13,	300,	9,	1,	0,	0,	0,	0,	17,	2,	0,	6,	2,	0,	0,	60,	20	,'Seafood'),
('Ocean Perch',	110,	20,	2,	3,	95,	4,	290,	8,	0,	0,	0,	0,	0,	21,	0,	2,	10,	4,	0.5,	3,	45,	15	,'Seafood'),
('Orange Roughy',	80,	5,	1,	2,	70	,3,	340,	10,	0,	0,	0,	0,	0,	16,	2,	0,	4,	2,	0,	0,	20,	7	,'Seafood'),
('Oysters, about 12 medium',	100,	35,	4,	6,	300,	13,	220,	6,	6,	2,	0,	0,	0,	10,	0,	6,	6,	45,	1,	5,	80,	27	,'Seafood'),
('Pollock',	90,	10,	1,	2,	110,	5,	370,	11,	0,	0,	0,	0,	0,	20,	2,	0,	0,	2,	0,	0,	80,	27	,'Seafood'),
('Rainbow Trout',	140,	50,	6,	9,	35,	1,	370,	11,	0,	0,	0,	0,	0,	20,	4,	4,	8,	2,	2,	10,	55,	18	,'Seafood'),
('Rockfish',	110,	15,	2,3,	70,	3,	440,	13,	0,	0,	0,	0,	0,	21,	4,	0,	2,	2,	0,	0,	40,	13	,'Seafood'),
('Salmon, Atlantic/Coho/Sockeye /Chinook',	200,	90,	10,	15,	55,	2,	430,	12,0,	0,	0,	0,	0,	24,	4,	4,	2,	2,	2,	10,	70,	23	,'Seafood'),
('Salmon,ÊChum/Pink',	130,	40,	4,	6,	65,	3,	420,	12,	0,	0	,0,	0,	0,	22,	2,	0,	2,	4,	1,	5,	70,	23,	'Seafood'),
('Scallops, about 6 large or 14 small',	140,	10,	1,	2,	310,	13,	430,	12,	5,	2,	0,	0,	0,	27,	2,	0,	4,	14,	0,	0,	65,	22	,'Seafood'),
('Shrimp',100,	10,	1.5,	2,	240,	10,	220,	6,	0,	0,	0,	0,	0,	21,	4,	4,	6,	10,	0,	0,	170,	57	,'Seafood'),
('Swordfish',	120,	50,	6,	9,	100,	4,	310,	9,	0,	0,	0,	0,	0,	16,	2,	2,	0,	6,	1.5,	8,	40,	13,'Seafood'),
('Tilapia',110,20,2.5,4,30,1,360,10,0,0,0,0,0,22,0,2,0,2,1,5,75,25,'Seafood'),
('Tuna',130,	15,	1.5,	2,	40,	2,	480,	14,	0,	0,	0,	0,	0,	26,	2,	2,	2,	4,	0,	0,	50,	17,	'Seafood');

SELECT * FROM food_nutrition;

SELECT Food_item FROM food_nutrition;