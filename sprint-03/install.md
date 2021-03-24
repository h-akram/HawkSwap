# Installation Instruction

From the build-scripts directory:

Make a copy of variables-sample.json and rename it to variables.json.
Modify the values in variables.json.

To build the two VMs, run:
`packer build --var-file ./variables.json .\ubuntu18045-itmt430-django-database.json`
`packer build --var-file ./variables.json .\ubuntu18045-itmt430-django-webserver.json`

After the build is complete, you need to do two things.
First, add the boxes by running `vagrant box add` command:
`vagrant box add ./frontend*.box --name frontend`
`vagrant box add ./backend*.box --name backend`
Then, create two directories - frontend and db. Run `vagrant init` command in each directory:
`vagrant init frontend`
`vagrant init backend`

To check if the boxes were added, you can run:
`vagrant box list`

To run the machines, run the `vagrant up` command.
To halt the machines, run the `vagrant halt` command.