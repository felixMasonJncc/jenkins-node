# -*- mode: ruby -*-
# vi: set ft=ruby :
require_relative 'settings_aws.rb'
include SettingsAws

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

 config.vm.define :jenkinsnode do |config_stage_aws|
    config_stage_aws.vm.provision "ansible_local" do |ansible|
          ansible.playbook = "provisioning/playbook-jenkins-node.yml"
          ansible.verbose = "true"
    end

    config_stage_aws.vm.provider :aws do |aws, override|

        config.vm.box = NAME_VAGRANT
        config.vm.box_url = "https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box"
        
        config.cache.enable_nfs = false

        # AWS Credentials:
        aws.keypair_name = AWS_KEY_PEMNAME
        #aws.elastic_ip = ELASTIC_IP_GEONODE_STAGE

        # AWS Location:
        aws.region = AWS_REGION
        aws.region_config AWS_REGION, :ami => AWS_UBUNTU_AMI
        aws.instance_type = AWS_TYPE_INS
        aws.security_groups = SECURITY_GROUPS
        aws.iam_instance_profile_arn = AWS_IAM_ROLE_ARN
        aws.tags = {
          'Name' => NAME_VAGRANT,
          'Project' => 'development',
          'TechOwner' => 'ulric.wilson@jncc.gov.uk'
        }

        # AWS Storage:
        aws.block_device_mapping = [{
          'DeviceName' => AWS_DEVICE_NAME,
          'Ebs.VolumeSize' => AWS_DEVICE_SIZE,
          'Ebs.DeleteOnTermination' => true,
          'Ebs.VolumeType' => AWS_DEVICE_VOL_TYPE,
        }]

        # SSH:
        override.ssh.username = "ubuntu"
        override.ssh.private_key_path = AWS_KEY_PEMPATH
                    
    end

 end

end