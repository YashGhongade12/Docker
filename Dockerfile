# Step 1: Base image
FROM python:3.10

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy requirements
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy everything (main.py + csv + models)
COPY . .

# Step 6: Run Streamlit
CMD ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]
