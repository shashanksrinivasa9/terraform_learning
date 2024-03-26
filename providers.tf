provider "aws"{
    region="us-west-1"
}

data "aws_eks_cluster" "cluster"{
    name=data.terraform_remote_state.eks.outputs.cluster_id
    
}

data "aws_eks_cluster_auth" "cluster_auth"{
     name=data.terraform_remote_state.eks.outputs.cluster_id
} 

provider "kubernetes"{
    host=data.terraform_remote_state.eks.outputs.cluster_endpoint
    token=data.aws_eks_cluster_auth.cluster_auth.token
    cluster_ca_certificate=base64decode(data.terraform_remote_state.eks.outputs.cluster_certificate_authority_data)
}