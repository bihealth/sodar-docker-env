# Omics Docker Environment

A Docker-based development and demo environment for
[Omics Data Management](https://cubi-gitlab.bihealth.org/cubi_engineering/cubi_data_mgmt/omics_data_mgmt).
Deploys all required components as networked Docker containers using
docker-compose.


## Included Components

* [iRODS iCAT server](https://github.com/mjstealey/irods-provider-postgres)
* Redis (for use with omics_taskflow)


## Requirements

* Ubuntu 16.04
* Python 3.5+
* Docker v18.03+
* Access to [cubi-gitlab.bihealth.org](https://cubi-gitlab.bihealth.org) 
* [Omics Data Management](https://cubi-gitlab.bihealth.org/cubi_engineering/cubi_data_mgmt/omics_data_mgmt)


## Installation

* Install `docker-ce`
* Set up and activate a `virtualenv` environment for Python 3
* Run `pip install -r requirements.txt`
* Login to the BIH gitlab with `docker login cubi-gitlab.bihealth.org:4567`
    * Currently not used
* Build the environment with `utility/env_build.sh`
* Deploy the environment with `utility/env_up.sh`


## Setup after Installation

* **NOTE:** After deploying, you must wait for some seconds for the iRODS iCAT
server to become active
    * To check the status, use `docker logs omics_irods -t`
* In [Omics Data Management](https://cubi-gitlab.bihealth.org/cubi_engineering/cubi_data_mgmt/omics_data_mgmt),
run `./manage.py synctaskflow`


## Mapped Ports on the Host Machine

* iRODS iCAT server: 1247
* Redis: **TODO**

## Tips and Tricks
* To erase data from iRODS, run `utility/cleanup_irods.sh`
    * **WARNING:** This can not be undone!
* For a shortcut to access the iRODS shell on the iRODS iCAT server as the
admin user, run `utility/irods_shell.sh`
* To rebuild and redeploy the environment, run `utility/env_relaunch.sh`.
    * **NOTE:** This will (naturally) erase all data in iRODS, so you'll have to run `./manage.py synctaskflow` again!
* Bring down the environment with `utility/env_down.sh`
