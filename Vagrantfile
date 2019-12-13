ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_rsa.pub").first.strip

Vagrant.configure(2) do |config|

    config.vm.boot_timeout = 2400

    config.vm.define "greenbone" do |host|
        host.vm.box = "ubuntu/bionic64"
        host.vm.hostname = "greenbone"
        host.vm.network "private_network", ip: "192.168.30.101"

        host.vm.provider "virtualbox" do |vb|
            vb.customize ["modifyvm", :id, "--memory", 1536]
            vb.customize ["modifyvm", :id, "--name", "greenbone"]
            vb.customize ['modifyvm', :id, '--cableconnected1', 'on']
            vb.customize ['modifyvm', :id, '--cableconnected2', 'on']
            vb.customize ["modifyvm", :id, "--cpuexecutioncap", "80"]
            vb.cpus = 2
        end

        host.vm.provision 'shell', inline: "chown vagrant:vagrant /home/vagrant/.ssh/authorized_keys", privileged: true
        host.vm.provision 'shell', inline: "echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys", privileged: false
    end

end
