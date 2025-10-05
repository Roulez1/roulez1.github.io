@echo off
echo Starting Bee AI with Gemini API...
echo.

echo Step 1: Installing Python dependencies...
pip install -r requirements_gemini.txt
if %errorlevel% neq 0 (
    echo Error installing dependencies. Please check your Python installation.
    pause
    exit /b 1
)

echo.
echo Step 2: Checking Gemini API configuration...
if exist config.py (
    echo API key found in config.py
) else (
    echo WARNING: config.py not found!
    echo Please create config.py with your GEMINI_API_KEY
    echo.
)

echo Step 3: Starting the Gemini AI server...
echo The server will start on http://localhost:5000
echo You can now open index.html in your browser to use the Bee AI application.
echo.
echo Press Ctrl+C to stop the server when you're done.
echo.

python bee_ai_gemini_server.py

pause
