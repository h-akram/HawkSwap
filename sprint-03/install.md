# Installation Instruction

From the build-scripts directory:

Make a copy of variables-sample.json and rename it to variables.json.
Modify the values in variables.json.

To build the two VMs, run:
`packer build --var-file ./variables.json .\ubuntu18045-itmt430-django-database.json`
`packer build --var-file ./variables.json .\ubuntu18045-itmt430-django-webserver.json`

After the build is complete, you need to do two things.
First, in the build directory, add the boxes by running the `vagrant box add` command:
`vagrant box add ./django-webserver*.box --name frontend`
`vagrant box add ./django-database*.box --name backend`
Then, create two directories - frontend and backend - under build-scripts. Run the `vagrant init` command in each directory:
`vagrant init frontend`
`vagrant init backend`

After running `vagrant init`, you have to modify a line in the two Vagrantfiles.
Go to the frontend Vagrantfile:
1. Uncomment line 35
2. Change the IP address to 192.168.33.33
Same for the backend:
1. Uncomment line 35
2. Change the IP address to 192.168.33.34

To check if the boxes were added, you can run:
`vagrant box list`

To run the machines, run the `vagrant up` command.
To halt the machines, run the `vagrant halt` command.