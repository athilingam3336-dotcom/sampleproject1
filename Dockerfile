# Step 1: எந்த OS/Language வேணும்?
FROM python:3.11-slim

# Step 2: Working folder create பண்ணு
WORKDIR /app/backend

# Step 3: packages list copy பண்ணி install பண்ணு
COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: உன் code copy பண்ணு
COPY backend/ .

# Step 5: Frontend copy பண்ணு
COPY frontend/ /app/frontend/

# Step 6: start script copy பண்ணு
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Step 7: Port open பண்ணு
EXPOSE 10000

# Step 8: Container start ஆனா இந்த command run பண்ணு
CMD ["/start.sh"]
