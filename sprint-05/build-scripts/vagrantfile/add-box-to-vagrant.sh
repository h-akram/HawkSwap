cd ../../build/

vagrant box add ./frontend*.box --name frontend
vagrant box add ./db*.box --name db

cd ../build-scripts/vagrantfile
