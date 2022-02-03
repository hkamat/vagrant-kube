# Vagrantfile and Scripts to Automate Kubernetes Setup using Kubeadm

## Documentation
Tested using Parallels and virtualbox provider provider.
MACOS had VB installation issues, but this should ideally also work with VB.

## Prerequisites
1. Vagrant
    - To Install -> ```brew install vagrant```. For windows download and install.
    - On Mac OS ensure ZScaler cert is updated in /opt/vagrant/embedded/cacert.pem
2. VirtualBox, Parallels or VMWare Fusion
    - By default for vagrant virtualbox is defualt provider. 
    - You can configure VAGRANT_DEFAULT_PROVIDER with environment variable change.
    - If required you can append provider to vagrant up command. ```vagrant up primary --provider=virtualbox```

## Usage/Examples

To provision the cluster, execute the following commands.
### For Mac:
```
    shell
    cd vagrant-kube
    chmod +x create_cluster.sh
    ./create_cluster.sh
    ```
```
### For Windows:
```
    cd vagrant-kube
    vagrant up primary
    vagrant up node01
    vagrant up node02
Note: node01 and node02 require primary to be up and running so please initiate all commands sequentially.
```
The ```create_cluster.sh``` will create a two node K8s cluster (along withe primary) ready to use.

Once cluster created:
```
vagrant ssh primary

vagrant ssh node01
vagrant ssh node02
```

