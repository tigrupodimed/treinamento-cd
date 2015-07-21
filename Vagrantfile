VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.synced_folder ".", "/vagrant", disabled: true

	config.vm.define "workstation", primary: true do |workstation|
		workstation.vm.box = "treinamentocdWK"
		workstation.vm.network "private_network", ip: "192.168.70.2"
		workstation.vm.provider "virtualbox" do |v|
  			v.memory = 512
  		end
	end

	config.vm.define "server" do |server|
		server.vm.box = "treinamentocdSR"
		server.vm.network "private_network", ip: "192.168.70.3"
		server.vm.provider "virtualbox" do |v|
  			v.memory = 512
  		end
	end
end