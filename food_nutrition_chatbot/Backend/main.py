from fastapi import FastAPI, Request
from pydantic import BaseModel
import mysql.connector
from typing import Dict

app = FastAPI()

# Database connection
def get_db_connection():
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="password",
        database="food_nutrition"
    )
    return connection

# Dialogflow request model
class DialogflowRequest(BaseModel):
    responseId: str
    queryResult: Dict
    originalDetectIntentRequest: Dict = None
    session: str

# Intent handler functions
def handle_calories_inquiry(food_item: str):
    connection = get_db_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT Calories FROM food_nutrition WHERE Food_item = %s", (food_item,))
    result = cursor.fetchone()
    connection.close()
    if result:
        return {"fulfillmentText": f"The calories in {food_item} is: {result['Calories']} kcal"}
    else:
        return {"fulfillmentText": f"Sorry, I don't have the information for {food_item}."}

def handle_fat_content_inquiry(food_item: str):
    connection = get_db_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT Total_Fat_g FROM food_nutrition WHERE Food_item = %s", (food_item,))
    result = cursor.fetchone()
    connection.close()
    if result:
        return {"fulfillmentText": f"The fat content in {food_item} is: {result['Total_Fat_g']}g"}
    else:
        return {"fulfillmentText": f"Sorry, I don't have the information for {food_item}."}

def handle_food_nutrition_inquiry(food_item: str):
    connection = get_db_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM food_nutrition WHERE Food_item = %s", (food_item,))
    result = cursor.fetchone()
    connection.close()
    if result:
        return {"fulfillmentText": f"{food_item} contains {result['Calories']} calories, {result['Total_Fat_g']}g fat, {result['Protein']}g protein, and {result['Sugars']}g sugars."}
    else:
        return {"fulfillmentText": f"Sorry, I don't have the information for {food_item}."}

def handle_food_type_inquiry(food_item: str):
    connection = get_db_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT Food_Type FROM food_nutrition WHERE Food_item = %s", (food_item,))
    result = cursor.fetchone()
    connection.close()
    if result:
        return {"fulfillmentText": f"The food type of {food_item} is: {result['Food_Type']}"}
    else:
        return {"fulfillmentText": f"Sorry, I don't have the information for {food_item}."}

def handle_high_vitamin_nutrition_inquiry(vitamin: str):
    connection = get_db_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute(f"SELECT Food_item FROM food_nutrition WHERE {vitamin} > 50 ORDER BY {vitamin} DESC LIMIT 5")
    results = cursor.fetchall()
    connection.close()
    if results:
        foods = ", ".join([result['Food_item'] for result in results])
        return {"fulfillmentText": f"Foods high in {vitamin} include: {foods}"}
    else:
        return {"fulfillmentText": f"Sorry, I don't have the information for high {vitamin} foods."}

def handle_low_calories_nutrition_inquiry(calories: int):
    connection = get_db_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT Food_item FROM food_nutrition WHERE Calories < %s ORDER BY Calories ASC LIMIT 5", (calories,))
    results = cursor.fetchall()
    connection.close()
    if results:
        foods = ", ".join([result['Food_item'] for result in results])
        return {"fulfillmentText": f"Foods with less than {calories} calories include: {foods}"}
    else:
        return {"fulfillmentText": f"Sorry, I don't have the information for foods with less than {calories} calories."}

def handle_mineral_content_inquiry(food_item: str):
    connection = get_db_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT Potassium_g, Sodium_g, Calcium, Iron FROM food_nutrition WHERE Food_item = %s", (food_item,))
    result = cursor.fetchone()
    connection.close()
    if result:
        return {"fulfillmentText": f"{food_item} contains {result['Potassium_g']}g Potassium, {result['Sodium_g']}g Sodium, {result['Calcium']}mg Calcium, and {result['Iron']}mg Iron."}
    else:
        return {"fulfillmentText": f"Sorry, I don't have the information for {food_item}."}

def handle_vitamin_content_inquiry(food_item: str):
    connection = get_db_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT Vitamin_A, Vitamin_C FROM food_nutrition WHERE Food_item = %s", (food_item,))
    result = cursor.fetchone()
    connection.close()
    if result:
        return {"fulfillmentText": f"{food_item} contains {result['Vitamin_A']} IU Vitamin A and {result['Vitamin_C']}mg Vitamin C."}
    else:
        return {"fulfillmentText": f"Sorry, I don't have the information for {food_item}."}

def handle_compare_food(food_item1: str, food_item2: str):
    connection = get_db_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM food_nutrition WHERE Food_item IN (%s, %s)", (food_item1, food_item2))
    results = cursor.fetchall()
    connection.close()
    if len(results) == 2:
        food1, food2 = results
        return {
            "fulfillmentText": f"Comparison between {food_item1} and {food_item2}:\n"
                               f"{food_item1} - Calories: {food1['Calories']} kcal, Fat: {food1['Total_Fat_g']}g, Protein: {food1['Protein']}g\n"
                               f"{food_item2} - Calories: {food2['Calories']} kcal, Fat: {food2['Total_Fat_g']}g, Protein: {food2['Protein']}g"
        }
    else:
        return {"fulfillmentText": f"Sorry, I don't have the information to compare {food_item1} and {food_item2}."}

# Webhook endpoint
@app.post("/webhook")
async def webhook_endpoint(request: Request):
    body = await request.json()
    dialogflow_request = DialogflowRequest(**body)
    intent_name = dialogflow_request.queryResult['intent']['displayName']
    parameters = dialogflow_request.queryResult['parameters']

    if intent_name == "calories.inquiry":
        response = handle_calories_inquiry(parameters.get('food_item'))
    elif intent_name == "Fat_Content.Inquiry":
        response = handle_fat_content_inquiry(parameters.get('food_item'))
    elif intent_name == "food_nutrition.inquiry":
        response = handle_food_nutrition_inquiry(parameters.get('food_item'))
    elif intent_name == "Food_Type.inquiry":
        response = handle_food_type_inquiry(parameters.get('food_item'))
    elif intent_name == "high_vitamin_nutrition.inquiry":
        response = handle_high_vitamin_nutrition_inquiry(parameters.get('vitamin'))
    elif intent_name == "low_calories_nutrition.inquiry":
        response = handle_low_calories_nutrition_inquiry(parameters.get('calories'))
    elif intent_name == "Mineral_Content.Inquiry":
        response = handle_mineral_content_inquiry(parameters.get('food_item'))
    elif intent_name == "Vitamin_Content.Inquiry":
        response = handle_vitamin_content_inquiry(parameters.get('food_item'))
    elif intent_name == "compare_food":
        response = handle_compare_food(parameters.get('food_item'), parameters.get('food_item2'))
    else:
        response = {"fulfillmentText": "Sorry, I don't understand that request."}

    return response

# Run the FastAPI application
if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)

# uvicorn main:app --reload