# user_data.sh

#!/bin/bash  
echo ECS_CLUSTER="${ecs_cluster_name}" >> /etc/ecs/ecs.config




#We also need to define key pair for the EC2, so we can access them after creation. We do that in key_pair.tf file.
#run the following set of command in terminal:
#KEY_PATH=~/.ssh/fake-video-studio
#ssh-keygen -t rsa -b 4096 -f $KEY_PATH 
# Enter passphrase (empty for no passphrase): press Enter
# Enter same passphrase again: press Enter
#chmod 600 $KEY_PATH
#ssh-add $KEY_PATH
#cat ${KEY_PATH}.pub
