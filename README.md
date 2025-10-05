# Bee AI - Plant Species Analysis System with AI Chat

This application combines NASA satellite data analysis with an AI-powered chat system specifically trained on bee-related questions and plant phenology data.

## Features

- **Interactive Map**: Visualize plant species data with NASA satellite information
- **Bee AI Chat**: Ask questions about bee behavior, plant blooming times, and honey production
- **Phenology Dashboard**: Track flowering timelines and multi-year trends
- **Hive Management**: Analyze optimal beehive placement and honey yield predictions
- **Real-time Data**: Integration with GBIF and BloomWatch data sources

## AI Chat Capabilities

The Bee AI is trained on extensive data about:
- Plant blooming times across Europe
- Climate change impacts on flowering
- Optimal beehive placement strategies
- Honey production timing and yield predictions
- Pollinator synchronization patterns
- Seasonal nectar flow analysis

## Quick Start

### Option 1: Automated Setup (Windows)
1. Double-click `start_bee_ai.bat`
2. Wait for the training to complete (5-10 minutes)
3. Open `index.html` in your browser
4. The AI chat will be available in the left sidebar

### Option 2: Manual Setup

1. **Install Python Dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

2. **Train the AI Model**:
   ```bash
   python train_bee_ai.py
   ```

3. **Start the Server**:
   ```bash
   python bee_ai_server.py
   ```

4. **Open the Application**:
   - Open `index.html` in your web browser
   - The AI chat will be available in the left sidebar

## Usage

### Using the AI Chat
1. Click on the "Bee AI" section in the left sidebar
2. Type your question about bees, plants, or honey production
3. Press Enter or click the send button
4. The AI will provide detailed, data-driven answers

### Example Questions
- "When should I place my hives near wild garlic fields in Germany?"
- "What's the best period for honey collection in southern Spain?"
- "How will climate change affect clover blooming in Sweden this year?"
- "When is the right time to expand bee colonies in western Turkey?"

### Using the Map and Dashboard
1. Use the search bar to find specific plant species
2. Apply filters to focus on allergy risks, honey production, or climate impacts
3. Click "Select Beehive Location" to analyze honey production potential
4. Switch between timeline, trends, pollinators, and harvesting tabs

## Technical Details

### AI Model
- **Base Model**: T5-small (Hugging Face Transformers)
- **Training Data**: 100+ bee-related Q&A pairs covering European plant phenology
- **Fine-tuning**: Custom training on bee behavior and plant blooming patterns
- **API**: RESTful API served via Flask

### Data Sources
- **NASA Satellite Data**: Landsat and MODIS imagery
- **GBIF**: Global Biodiversity Information Facility
- **BloomWatch**: Phenology monitoring and forecasting
- **Plant Database**: Comprehensive species characteristics

### Architecture
- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Backend**: Python Flask server
- **AI**: Hugging Face Transformers (T5)
- **Maps**: Leaflet.js with custom styling
- **Charts**: Chart.js for data visualization

## File Structure

```
nasappsonhal/
├── index.html              # Main application interface
├── script.js               # Frontend JavaScript logic
├── styles.css              # Application styling
├── data.js                 # Plant species database
├── bee_ai_server.py        # Python Flask server
├── train_bee_ai.py         # AI model training script
├── requirements.txt        # Python dependencies
├── start_bee_ai.bat        # Windows startup script
└── chat_model/             # Trained AI model (created after training)
```

## API Endpoints

- `GET /` - Serves the main HTML file
- `POST /api/chat` - Chat with the AI
- `GET /api/health` - Server health check
- `POST /api/train` - Retrain the model with new data

## Troubleshooting

### Common Issues

1. **"AI service not responding"**:
   - Make sure the Python server is running (`python bee_ai_server.py`)
   - Check that port 5000 is not blocked by firewall

2. **Training fails**:
   - Ensure you have sufficient disk space (2-3 GB)
   - Check that all Python dependencies are installed correctly

3. **Map not loading**:
   - Check your internet connection
   - Ensure JavaScript is enabled in your browser

### System Requirements

- **Python**: 3.7 or higher
- **RAM**: 4GB minimum (8GB recommended for training)
- **Storage**: 3GB free space
- **Browser**: Modern browser with JavaScript enabled
- **Internet**: Required for map tiles and initial data loading

## Contributing

To add new training data or improve the AI responses:

1. Edit the `training_set` array in `train_bee_ai.py`
2. Add new Q&A pairs following the existing format
3. Retrain the model: `python train_bee_ai.py`
4. Restart the server: `python bee_ai_server.py`

## License

This project is for educational and research purposes. Please respect the data usage policies of NASA, GBIF, and BloomWatch when using this application.
