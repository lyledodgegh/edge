# launch via multipass
multipass launch --name node1 -d 80G -m 8G -c 4 --cloud-init node1-cloud-init.yaml
multipass launch --name node2 -d 80G -m 8G -c 4 --cloud-init node2-cloud-init.yaml
multipass launch --name node3 -d 80G -m 8G -c 4 --cloud-init node3-cloud-init.yaml

