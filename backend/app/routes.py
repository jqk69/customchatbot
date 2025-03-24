from flask import Blueprint, request, jsonify
from src.chatbot import get_chat_response  # Import chatbot function

routes = Blueprint("routes", __name__)

@routes.route("/", methods=["GET"])
def home():
    return jsonify({"message": "Custom Chatbot API is running!"})

@routes.route("/chat", methods=["POST"])
def chat():
    data = request.json
    user_input = data.get("message", "")

    if not user_input:
        return jsonify({"error": "No message provided"}), 400

    response = get_chat_response(user_input)
    return jsonify({"response": response})
