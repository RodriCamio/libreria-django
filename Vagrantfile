Vagrant.configure("2") do |config|
    config.vm.define "desafio-15" do |h|
      h.vm.box = "ubuntu/focal64"
      h.vm.network "forwarded_port", guest: 8080, host: 8080
  
      h.vm.hostname = "desafio15"
      h.vm.network "forwarded_port", guest: 22, host: 2222, id: "ssh", auto_correct: true
  
      h.vm.network "public_network", type: "dhcp", bridge: "Realtek PCIe GbE Family Controller"
  
   
  
      h.vm.provision "shell", path: "provisioning.sh"
      h.vm.provider "virtualbox" do |vb|
        vb.name = "desafio-15"
        vb.memory = "2048"
        vb.cpus = 2
      end    
    end
  end
  