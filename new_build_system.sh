#!bin/bash/

# Building docker images

cd ./physical_sim_docker/
docker build ./ -t sim_sswat_image
cd ..

cd ./plc_1_docker/
docker build ./ -t plc1_sswat_image
cd ..

cd ./plc_2_docker/
docker build ./ -t plc2_sswat_image
cd ..

cd ./plc_3_docker/
docker build ./ -t plc3_sswat_image
cd ..

# Running docker containers
sudo docker-compose up -d
