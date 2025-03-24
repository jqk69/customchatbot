@echo off
echo Setting up project structure for CUSTOMCHATBOT...

:: Create Backend Structure
mkdir backend
mkdir backend\src backend\models backend\data backend\data\raw backend\data\processed backend\data\embeddings backend\logs backend\tests
type nul > backend\requirements.txt
type nul > backend\config.py
type nul > backend\run.py
type nul > backend\src\__init__.py
type nul > backend\src\main.py
type nul > backend\src\crawler.py
type nul > backend\src\preprocessor.py
type nul > backend\src\embedder.py
type nul > backend\src\chatbot.py
type nul > backend\src\utils.py
type nul > backend\src\routes.py
type nul > backend\tests\test_crawler.py
type nul > backend\tests\test_preprocessor.py
type nul > backend\tests\test_chatbot.py

:: Create Frontend Structure
mkdir frontend
cd frontend
npx create-vite@latest frontend --template react
cd ..

:: Create Common Files
type nul > docker-compose.yml
type nul > setup.bat
type nul > start.bat

:: Add default content to .gitignore
echo venv/>> .gitignore
echo __pycache__/>> .gitignore
echo *.log>> .gitignore
echo .env>> .gitignore
echo node_modules/>> .gitignore

echo Project structure created successfully!
