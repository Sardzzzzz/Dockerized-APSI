echo "Loading Docker images..."

#Load all your images
docker load -i thesis-db.tar
docker load -i thesis-backend.tar
docker load -i smart-target-frontend.tar
docker load -i smart-target-admin.tar

echo "All images loaded successfully."

echo "Starting Docker Compose stack..."
docker-compose up -d

echo "All containers are now running!"
#To show the running / available containers after starting the docker compose.
docker ps
