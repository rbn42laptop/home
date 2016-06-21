sudo systemctl start docker

# Install nvidia-docker and nvidia-docker-plugin
wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.0-rc.3/nvidia-docker_1.0.0.rc.3_amd64.tar.xz
sudo tar --strip-components=1 -C /usr/bin -xvf /tmp/nvidia-docker*.tar.xz && rm /tmp/nvidia-docker*.tar.xz

# Run nvidia-docker-plugin
#ps aux | grep nvidia-docker-plugin

sudo -b nohup nvidia-docker-plugin > /tmp/nvidia-docker.log

# Test nvidia-smi
nvidia-docker run --rm nvidia/cuda nvidia-smi
#-i --interactive -t --tty
#nvidia-docker run -it kaixhin/cuda-caffe
#nvidia-docker run -it kaixhin/cuda-lasagne
"""
这个方案似乎用起来挺方便的.
"""
#连接到开启的docker
#docker exec -i -t a2cdcbb3246b /bin/bash
