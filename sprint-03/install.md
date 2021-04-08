# Installation Instruction

From the build-scripts directory:

Make a copy of variables-sample.json and rename it to variables.json.
Modify the values in variables.json.

For this sprint, you will need to build the backend first, then build the frontend.

For the backend:
1) In the build-scripts directory, run:
`packer build --var-file ./variables.json .\ubuntu18045-itmt430-django-database.json`
2) In the build directory, run:
`vagrant box add ./django-database*.box --name backend`
3) Make a backend directory under build-scripts.
4) In the build-scripts/backend directory, run:
`vagrant init backend`
5) Go to the Vagrantfile and:
1. Uncomment line 35
2. Change the IP address to 192.168.33.34

Same for the frontend:
1) In the build-scripts directory, run:
`packer build --var-file ./variables.json .\ubuntu18045-itmt430-django-webserver.json`
2) In the build directory, run:
`vagrant box add ./django-webserver*.box --name frontend`
3) Make a frontend directory under build-scripts.
4) In the build-scripts/frontend directory, run:
`vagrant init frontend`
5) Go to the Vagrantfile and:
1. Uncomment line 35
2. Change the IP address to 192.168.33.33
6) Once you're done, you should be able to connect to 192.168.33.33:8000/admin with your superuser username and password.

* You should be able to see the tables under the database 'posts' and some of them will be populated.

To check if the boxes were added, you can run:
`vagrant box list`

To run the machines, run the `vagrant up` command.
To halt the machines, run the `vagrant halt` command.
To destroy the machines, run the `vagrant destroy` command.
To remove the machines, run the `vagrant box remove` command.