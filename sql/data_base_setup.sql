DROP DATABASE NutriCompareDB;

-- Create the database
CREATE DATABASE IF NOT EXISTS NutriCompareDB;
USE NutriCompareDB;

-- Create the Categories table
CREATE TABLE Categories (
    category_ID INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL UNIQUE
);
-- Insert default categories
INSERT INTO Categories (category_name) VALUES ('Fast Food'), ('General Food');

DESCRIBE Categories;


-- Create the Foods table
CREATE TABLE Foods (
    food_ID INT PRIMARY KEY AUTO_INCREMENT,
    food_name VARCHAR(100) NOT NULL,
    category_ID INT,
    FOREIGN KEY (category_ID) REFERENCES Categories(category_ID)
);


-- Create the Macronutrients table
CREATE TABLE Macronutrients (
    macro_ID INT PRIMARY KEY AUTO_INCREMENT,
    food_ID INT NOT NULL,
    calories_kcal float,
    total_fat_g float,
    saturated_fat_g float,
    carbohydrates_g float,
    sugars_g float,
    fiber_g float,
    protein_g float,
    FOREIGN KEY (food_ID) REFERENCES Foods(food_ID)
);
DESCRIBE Macronutrients;


-- Create the Micronutrients table
CREATE TABLE Micronutrients (
    micro_ID INT PRIMARY KEY AUTO_INCREMENT,
    food_ID INT NOT NULL,
    vitamin_A_mg float,
    vitamin_B1_mg float,
    vitamin_B11_mg float,
    vitamin_B12_mg float,
    vitamin_B2_mg float,
    vitamin_B3_mg float,
    vitamin_B5_mg float,
    vitamin_B6_mg float,
    vitamin_C_mg float,
    vitamin_D_mg float,
    vitamin_E_mg float,
    vitamin_K_mg float,
    calcium_mg float,
    iron_mg float,
    potassium_mg float,
    magnesium_mg float,
    FOREIGN KEY (food_ID) REFERENCES Foods(food_ID)
);
DESCRIBE Micronutrients;


-- Create the OtherNutrients table
CREATE TABLE OtherNutrients (
    other_nutrient_ID INT PRIMARY KEY AUTO_INCREMENT,
    food_ID INT NOT NULL,
    sodium_g float,
    cholesterol_mg float,
    FOREIGN KEY (food_ID) REFERENCES Foods(food_ID)
);
DESCRIBE OtherNutrients;
