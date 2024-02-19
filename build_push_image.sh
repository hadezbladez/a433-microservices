docker network create nwk-item-app
docker run -d --name item-db-mongo --network nwk-item-app --network-alias item-db -p 27017:27017 -v item-mongodb-data:/data/db -e MONGO_INITDB_ROOT_USERNAME=****** -e MONGO_INITDB_ROOT_PASSWORD=****** mongo
docker build -t item-app:v1 .
docker run -d --name=item-app --network nwk-item-app -p 8080:8080 item-app:v1