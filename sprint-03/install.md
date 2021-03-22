# Installation Instruction

Place all instruction needed to build your entire application here

From the build-scripts directory:

We will use 'variables-demo.json' for this sprint's VM.

To build the two VMs, run:
`packer build --var-file ./variables-demo.json .\ubuntu18045-sample-server.json`

After the build is complete, you need to do two things.
First, add the boxes by running `vagrant box add` command:
`vagrant box add ./frontend*.box --name frontend`
`vagrant box add ./db*.box --name db`
Then, create two directories - frontend and db. Run `vagrant init` command in each directory:
`vagrant init frontend`
`vagrant init db`

To check if the boxes were added, you can run:
`vagrant box list`

To run the machines, run the `vagrant up` command.
To halt the machines, run the `vagrant halt` command.