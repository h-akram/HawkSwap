Set-Location -path ../../build/

vagrant box add ./frontend*.box --name frontend
vagrant box add ./db*.box --name db

Set-Location -path ../build-scripts/vagrantfile
