# Ubuntu Amazon EC2 AMI Finder: https://cloud-images.ubuntu.com/locator/ec2/
#
# Ubuntu AMI recommended: ami-39501209 (Virtualization: hvm, Storage type: ebs,
#                                       arch: amd64, version: 14.04 LTS)
# Type instance recomended: t2.micro (Variable ECUs, 1 vCPUs, 2.5 GHz, Intel Xeon Family,
#                                     1 GiB memory, EBS only)


module SettingsAws
  NAME_VAGRANT = "JNCC-PROD-JENKINS-ANSIBLE"
  AWS_KEY_PEMNAME = "jncc-prod-jenkins"
  AWS_KEY_PEMPATH = "/home/ubuntu/keys/jncc-prod-jenkins.pem"
  AWS_UBUNTU_AMI = "ami-394f4b40"
  AWS_REGION = "eu-west-1"
  AWS_TYPE_INS = "t2.micro"
  AWS_DEVICE_SIZE = 100
  AWS_DEVICE_NAME = "/dev/sda1"
  AWS_DEVICE_VOL_TYPE = "gp2"
  AWS_IAM_ROLE_ARN = "arn:aws:iam::914910572686:instance-profile/jncc-build-agent"
  SECURITY_GROUPS = "jncc-peterborough-ssh-access" "vagrant-conrolled"  
  #ELASTIC_IP = '54.229.121.61'
  #ELASTIC_IP_GEONODE_STAGE = '54.229.121.61'
  #ELASTIC_IP_GEONODE_SHOW = '52.214.128.195'
end