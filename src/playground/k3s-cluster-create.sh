# variables
TOKEN=$(uuidgen)

# launch via multipass
multipass launch --name node1 -d 80G -m 8G -c 4 --cloud-init cloud-inits/aspnetcore-runtime.yaml
multipass launch --name node2 -d 80G -m 8G -c 4 --cloud-init cloud-inits/aspnetcore-runtime.yaml
multipass launch --name node3 -d 80G -m 8G -c 4 --cloud-init cloud-inits/aspnetcore-runtime.yaml

# install k3s
multipass exec node1 -- curl -sfL https://get.k3s.io | K3S_TOKEN=$TOKEN sh -
multipass exec node2 -- curl -sfL https://get.k3s.io | K3S_URL=https://node1:6443 K3S_TOKEN=$TOKEN sh -
multipass exec node3 -- curl -sfL https://get.k3s.io | K3S_URL=https://node1:6443 K3S_TOKEN=$TOKEN sh -
