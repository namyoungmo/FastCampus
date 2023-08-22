# before ghost installation by helm, set the aws ebs csi driver 
# https://repost.aws/knowledge-center/eks-persistent-storage 참조
# To verify that your AWS IAM OpenID Connect (OIDC) provider exists for your cluster, run the following command:
aws eks describe-cluster --name your_cluster_name --query "cluster.identity.oidc.issuer" --output text

# Verify that your IAM OIDC provider is configured:
aws iam list-open-id-connect-providers | grep OIDC_PROVIDER_ID

# Create an IAM OIDC provider:
eksctl utils associate-iam-oidc-provider --cluster my-cluster --approve

# aws ebs csi driver role
aws iam create-role  --role-name AmazonEKS_EBS_CSI_Driver  --assume-role-policy-document file://"trust-policy.json"

# aws ebs csi driver policy attach
aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy --role-name AmazonEKS_EBS_CSI_Driver

# aws ebs csi driver addon create
aws eks create-addon  --cluster-name test-eks-cluster  --addon-name aws-ebs-csi-driver  --service-account-role-arn arn:aws:iam::341742833016:role/AmazonEKS_EBS_CSI_Driver