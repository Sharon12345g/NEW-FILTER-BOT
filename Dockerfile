# Use Python 3.10 as the base image
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Upgrade motor and umongo libraries
RUN pip install --upgrade motor
RUN pip install --upgrade umongo

# Install dependencies from requirements.txt
RUN pip install -r requirements.txt

# Command to run the bot
CMD ["python3", "bot.py"]
