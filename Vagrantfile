Vagrant.configure("2") do |config|
  # Configuración del vagrant box
  config.vm.define "desafio-15" do |h|

  # Configuración del box ubuntu
    h.vm.box = "ubuntu/focal64"

  # Configuración de tunel al puerto 80
    h.vm.network "forwarded_port", guest: 8080, host: 8080

  # Configuración del nombre del host
    h.vm.hostname = "desafio15"

  # Primer adaptador de red configurado como NAT para SSH
    h.vm.network "forwarded_port", guest: 22, host: 2222, id: "ssh", auto_correct: true

  # Segundo adaptador de red configurado como puente
    h.vm.network "public_network", type: "dhcp", bridge: "Realtek PCIe GbE Family Controller"

  # Configuración del provision
    h.vm.provision "shell", path: "provisioning.sh"

  # Configuración de la máquina virtual
    h.vm.provider "virtualbox" do |vb|
      vb.name = "desafio-15"
      vb.memory = "2048"
      vb.cpus = 2
    end    
  end
end