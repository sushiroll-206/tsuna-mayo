#!/bin/bash

echo "🚀 Setting up SmartRecs project..."

# Step 1: Create virtual environment
echo "🔧 Creating virtual environment..."
python3 -m venv venv

# Step 2: Activate virtual environment
echo "✅ Activating virtual environment..."
source venv/bin/activate

# Step 3: Upgrade pip
echo "📦 Upgrading pip..."
pip install --upgrade pip

# Step 4: Create requirements.txt inline
echo "🧾 Writing requirements.txt..."
cat > requirements.txt <<EOL
pandas==2.2.2
numpy==1.26.4
scikit-learn==1.4.2
matplotlib==3.8.4
seaborn==0.13.2
scipy==1.13.0
fastapi==0.110.1
uvicorn==0.29.0
redis==5.0.3
faker==25.2.0
joblib==1.4.2
tensorflow==2.12.0 
tensorflow-datasets==4.9.2
tensorflow-recommenders==0.7.3
EOL

# Step 5: Install from requirements.txt
echo "📥 Installing dependencies..."
pip install -r requirements.txt

# Step 6: Install scikit-surprise separately
echo "🔁 Installing scikit-surprise..."
pip install scikit-surprise

# Step 7: Confirm installation
echo "✅ Verifying installation..."
python -c "import pandas, tensorflow, fastapi; print('🎉 Setup complete!')"