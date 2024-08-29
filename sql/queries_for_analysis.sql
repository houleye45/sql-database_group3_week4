-- --------------------------------------------------------------------------------------
-- -----------        Nutrient Wars: Fast Food vs. Everyday Meals       -----------------
-- --------------------------------------------------------------------------------------
-- Data Analysis

-- --------------------------------------------------------------------------------------
/* Hypothesis 1: Fast food items have higher calorie content and a greater proportion of 
calories from fat compared to general food items. */
-- --------------------------------------------------------------------------------------

-- 1. First we will do the total calories comparison:
-- This query calculates the average calories content for Fast_Food vs. General_Food
SELECT 
	category, 
    AVG(calories_kcal) AS avg_calories
FROM Macronutrients M
JOIN Foods F 
ON M.food_ID = F.food_ID
GROUP BY category;


-- 2. Now, calculate the proportion of calories from Fat:
-- This query calculates the average proportion of calories from fat in Fast_Food 
-- compared to General_Food.
SELECT category, 
       AVG((total_fat_g * 9) / calories_kcal) AS avg_fat_calories_ratio
FROM Macronutrients M
JOIN Foods F 
ON M.food_ID = F.food_ID
GROUP BY category;

-- Clarification
/* The multiplication by 9 is used because fat provides 9 kilocalories (kcal) per gram. 
This is a standard nutritional fact: each gram of fat contributes 9 kcal to the total 
energy content of food.*/