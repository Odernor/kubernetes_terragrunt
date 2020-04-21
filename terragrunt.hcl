inputs = {
  kubernetes_prefix = "kube"
  location          = "nbg1"

  network_range  = "10.0.0.0/8"
  network_subnet = "10.0.1.0/24"
  network_zone   = "eu-central"
  
  ssh_key_name = "ssh_rsa_key"
  # Keep empty when u wish to use ~/.ssh/id_rsa.pub
  ssh_rsa_key = ""

  # Jumphost
  jumphost_name = "auth1"
  jumphost_image = "ubuntu-18.04"
  jumphost_server_type = "cx11"
  jumphost_internal_ip = "10.0.1.1"

  # kubernetes
  kubernetes_version = "v1.18.2"
  # random token. Format: [a-z0-9]{6}\.[a-z0-9]{16} or use: kubeadm token generate
  kubernetes_token = "1yl44y.g0t8eqio706q08pp"

  # kubernetes master
  kubernetes_image = "ubuntu-18.04"
  kubernetes_master_server_type = "cx11"
  kubernetes_master_internal_ip = "10.0.1.2"
  
  # kubernetes nodes
  kubernetes_node_server_type = "cx11"
  kubernetes_node_count = 2

}
