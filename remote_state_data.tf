data "terraform_remote_state" "eks" {
  backend = "local"
  config = {
    path = "C:/terraform_code/eks_cluster/terraform.tfstate"
    }
}
