# before ghost installation by helm, set the aws ebs csi driver 
# aws ebs csi driver role
aws iam create-role  --role-name AmazonEKS_EBS_CSI_Driver  --assume-role-policy-document file://"trust-policy.json"

# aws ebs csi driver policy attach
aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy --role-name AmazonEKS_EBS_CSI_Driver

# aws ebs csi driver addon create
aws eks create-addon  --cluster-name test-eks-cluster  --addon-name aws-ebs-csi-driver  --service-account-role-arn arn:aws:iam::341742833016:role/AmazonEKS_EBS_CSI_Driver