# Omics Docker Environment

A Docker-based development and demo environment for
[Omics Data Access](https://gitlab.bihealth.org/cubi/omics_data_access).
Deploys all required components as networked Docker containers using
docker-compose.

## Included Components

* [omics_taskflow](https://gitlab.bihealth.org/cubi_data_mgmt/omics_taskflow)
* [omics_irods_rest](https://gitlab.bihealth.org/cubi_data_mgmt/omics_irods_rest)
* [madeline_docker](https://gitlab.bihealth.org/cubi_data_mgmt/madeline_docker)
* [iRODS iCAT server](https://github.com/mjstealey/irods-provider-postgres)
* Redis


## Requirements

* Ubuntu 16.04
* Python 3.5
* Docker v17.05+
* Access to [gitlab.bihealth.org](https://gitlab.bihealth.org) 
* [Omics Data Access](https://gitlab.bihealth.org/cubi/omics_data_access)


## Installation

* Install `docker`
* Set up and activate a `virtualenv` environment for Python 3
* Run `pip install -r requirements.txt`
* Login to the BIH gitlab with `docker login gitlab.bihealth.org:4567`
* Build the environment with `utility/env_build.sh`
* Deploy the environment with `utility/env_up.sh`


## Setup after Installation

* **NOTE:** After deploying, you must wait for some seconds for the iRODS iCAT
server to become active
* In [Omics Data Access](https://gitlab.bihealth.org/cubi/omics_data_access),
run `./manage.py synctaskflow`


## Tips and Tricks
* To erase data from iRODS, run `utility/cleanup_irods.sh`
    * **WARNING:** This can not be undone!
* For a shortcut to access the iRODS shell on the iRODS iCAT server as the
admin user, run `utility/irods_shell.sh`
* To rebuild and redeploy the environment, run `utility/env_relaunch.sh`.
    * **NOTE:** This will (naturally) erase all data in iRODS, so you'll have to run
`./manage.py synctaskflow` again!
* Bring down the environment with `utility/env_down.sh`
