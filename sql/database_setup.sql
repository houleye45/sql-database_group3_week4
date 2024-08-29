DROP DATABASE NutriCompareDB;

-- Create the database
CREATE DATABASE IF NOT EXISTS NutriCompareDB;
USE NutriCompareDB;


-- Create the Foods table
CREATE TABLE Foods (
    food_ID INT PRIMARY KEY AUTO_INCREMENT,
    food_name text,
    restaurant text,
    category text
);

-- Verifify imported data 
SELECT * FROM Foods
LIMIT 10;


-- Create the Macronutrients table
CREATE TABLE Macronutrients (
    macro_ID INT PRIMARY KEY AUTO_INCREMENT,
    food_ID INT,
    calories_kcal float,
    total_fat_g float,
    saturated_fat_g float,
    carbohydrates_g float,
    sugar_g float,
    fiber_g float,
    protein_g float,
    FOREIGN KEY (food_ID) REFERENCES Foods(food_ID)
);
DESCRIBE Macronutrients;

-- Verifify imported data 
SELECT * FROM Macronutrients
LIMIT 10;


-- Create the Micronutrients table
CREATE TABLE Micronutrients (
    micro_ID INT PRIMARY KEY AUTO_INCREMENT,
    food_ID INT,
    vitamin_A_mg float,
    vitamin_C_mg float,
    calcium_mg float,
    FOREIGN KEY (food_ID) REFERENCES Foods(food_ID)
);
DESCRIBE Micronutrients;

-- Verifify imported data 
SELECT * FROM Micronutrients
LIMIT 10;


-- Create the OtherNutrients table
CREATE TABLE OtherNutrients (
    other_nutrient_ID INT PRIMARY KEY AUTO_INCREMENT,
    food_ID INT,
    sodium_g float,
    cholesterol_mg float,
    FOREIGN KEY (food_ID) REFERENCES Foods(food_ID)
);
DESCRIBE OtherNutrients;

-- Verifify imported data 
SELECT * FROM OtherNutrients
LIMIT 10;
