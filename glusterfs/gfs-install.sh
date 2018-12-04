sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:gluster/glusterfs-5
sudo apt-get update
sudo apt-get install -y glusterfs-server
sudo systemctl start glusterd
sudo systemctl enable glusterd
sudo systemctl status glusterd
