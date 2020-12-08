Vagrant.configure("2") do |config|
  config.vm.define "dhcpd" do |dhcpd|
    dhcpd.vm.box = "generic/ubuntu2004"
    dhcpd.vm.network "private_network", ip: "10.4.20.2"
    dhcpd.vm.provision "shell", path: "dhcp-server.sh"
    dhcpd.vm.provision "file", source: "dhcpd.conf", destination: "/tmp/dhcpd.conf"
    dhcpd.vm.provision "shell", path: "dhcpd-conf.sh"
  end

  config.vm.define "your_client" do |your_client|
    your_client.vm.box = "generic/ubuntu2004"
    your_client.vm.network "private_network", ip: "10.4.20.3", auto_config: false
  end
end
