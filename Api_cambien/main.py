import serial
import json
from datetime import datetime, date
from fastapi import FastAPI, HTTPException, Query
from pydantic import BaseModel
from fastapi.middleware.cors import CORSMiddleware
import threading
import requests
import pyodbc
from typing import Optional

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

# Model for sensor data
class SensorData(BaseModel):
    temperature: float
    humidity: float
    timestamp: str

# Global variable to store the latest sensor data
latest_data = []

# Function to read data from Arduino
def read_from_arduino():
    global latest_data
    ser = serial.Serial('COM3', 9600, timeout=1)  # Adjust 'COM3' as necessary
    while True:
        if ser.in_waiting > 0:
            line = ser.readline().decode('utf-8').strip()
            try:
                data = json.loads(line)
                temperature = data['temperature']
                humidity = data['humidity']
                timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
                
                # Update timestamp in the JSON data
                data['timestamp'] = timestamp

                # Update the global variable with the latest data
                latest_data = data
            except json.JSONDecodeError:
                print("Received invalid JSON data")

# Start the Arduino reading function in a separate thread
thread = threading.Thread(target=read_from_arduino)
thread.daemon = True
thread.start()

@app.get("/api/data", response_model=SensorData)
def get_data():
    if not latest_data:
        raise HTTPException(status_code=404, detail="No data available")
    return latest_data

@app.get("/api/get_sensor")
def get_sensor_data():
    # URL của Node-RED endpoint
    node_red_url = "http://localhost:1880/getdata"

    try:
        # Lấy dữ liệu từ Node-RED
        response = requests.get(node_red_url)
        response.raise_for_status()
        return response.json()
    except requests.RequestException as e:
        raise HTTPException(status_code=500, detail=str(e))





if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)
