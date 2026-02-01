# Use the official NVIDIA Jetson Inference base image
FROM dustynv/jetson-inference:r32.7.1

# Set the working directory inside the container
WORKDIR /app

# Copy your python script into the container
COPY my_alarm.py /app/my_alarm.py

# Set the entry point to run your script automatically
# We use --network=ssd-mobilenet-v2 by default
ENTRYPOINT ["python3", "my_alarm.py"]
