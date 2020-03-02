# docker create music
To compile th docker image your self:

    sudo make build


To push to the docker hub:

    make upload


To run the docker file

    sudo docker run --runtime=nvidia -u $(id -u):$(id -g) -it create_music bash
    python predict.py


If your enviroment does not have NVIDIA GPU:

    sudo docker run -u $(id -u):$(id -g) -it create_music bash
    python predict.py


To take out the file, in an sepreate window run:

    sudo docker ps


find the docker's  CONTAINER ID  and run:

    sudo docker cp 'CONTAINER ID':/tmp/created_music.mid created_music.mid

