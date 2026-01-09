From python:3.10-slim
# Set working directory
WORKDIR /app

# Copy dependency file
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py app.py

# Expose port for Hugging Face Spaces
EXPOSE 7860

# Start the application
CMD ["python", "app.py"]
