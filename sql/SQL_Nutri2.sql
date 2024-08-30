use nutricomparedb;

-- Average macronutrient values for each restaurant round to 2 decimals
SELECT R.restaurant_name,
    
    
    ROUND(AVG(M.saturated_fat_g),2) AS avg_saturated_fat,
    ROUND(AVG(M.carbohydrates_g),2) AS avg_carbohydrates,
    ROUND(AVG(M.sugar_g),2) AS avg_sugar,
    ROUND(AVG(M.fiber_g),2) AS avg_fiber,
    ROUND(AVG(M.protein_g),2) AS avg_protein
FROM Restaurants R
JOIN Foods F ON R.restaurant_id = F.restaurant_id
JOIN Food_ids FI ON F.food_id = FI.food_id
JOIN Macronutrients M ON FI.macronutrient_id = M.macronutrient_id
GROUP BY R.restaurant_name;

-- MAX and MEAN macronutrients for each restaurant round to 2 decimals
SELECT R.restaurant_name,
    ROUND(MAX(M.calories_kcal),2) AS max_calories,
    ROUND(AVG(M.calories_kcal),2) AS avg_calories,
    ROUND(MAX(M.total_fat_g),2) AS max_fat,
    ROUND(AVG(M.total_fat_g),2) AS avg_fat,
    ROUND(MAX(M.saturated_fat_g),2) AS max_saturated_fat,
    ROUND(AVG(M.saturated_fat_g),2) AS avg_saturated_fat,
    ROUND(MAX(M.sugar_g),2) AS max_sugar,
    ROUND(AVG(M.sugar_g),2) AS avg_sugar
FROM Restaurants R
JOIN Foods F ON R.restaurant_id = F.restaurant_id
JOIN Food_ids FI ON F.food_id = FI.food_id
JOIN Macronutrients M ON FI.macronutrient_id = M.macronutrient_id
GROUP BY R.restaurant_name;
