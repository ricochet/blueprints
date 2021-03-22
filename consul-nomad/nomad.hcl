variable "cn_network" {
  default = "dc1"
}

variable "cn_network" {
  default = "dc1"
}

variable "cn_consul_server_config" {
  default = "${file("${file_dir()}/consul_config/consul.hcl")}"
}

variable "cn_nomad_cluster_name" {
  default = "nomad_cluster.local"
}

variable "cn_consul_cluster_name" {
  default = "container.consul"
}

network "dc1" {
  subnet = "10.15.0.0/16"
}

module "nomad_consul" {
  source = "github.com/shipyard-run/blueprints/modules//consul-nomad"
  #source = "../modules/consul-nomad"
}