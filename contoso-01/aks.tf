module "aks" {
  source = "git::https://github.com/rafaveloso23/tf-modules.git//aks-public?ref=main"

  internet_access = true
  cluster_name    = "aks-cluster-01"
}
