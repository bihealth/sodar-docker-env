SODAR Docker Environment
========================

A Docker-based local development environment for
`SODAR <https://github.com/bihealth/sodar-server>`_.

Deploys required components as networked Docker containers using docker-compose.

ARCHIVED PROJECT, NO LONGER IN DEVELOPMENT
------------------------------------------

This project is no longer in use and has been archived. Instead, please use
`sodar-docker-compose <https://github.com/bihealth/sodar-docker-compose>`_
for SODAR development.

Included Components
-------------------

- 2x `iRODS iCAT server <https://github.com/mjstealey/irods-provider-postgres>`_
    * **Main** server for development
        * NOTE: Data wiped upon restart! (permanent storage hook to be done)
    * **Test** Server for testing
        * Content will be wiped out during tests and restart
- Redis (for use with SODAR Taskflow and the SODAR v0.5+ Celery process)


Requirements
------------

- Ubuntu (20.04 recommended)
- Python 3.6+
- `SODAR <https://github.com/bihealth/sodar-server>`_
- `SODAR Taskflow <https://github.com/bihealth/sodar-taskflow>`_


Installation
------------

- Install ``docker-ce``
    * For accessing Docker without root access,
      `see here <https://docs.docker.com/install/linux/linux-postinstall/>`_
- Set up and activate a ``virtualenv`` environment for Python 3
- Run ``pip install -r requirements.txt``
- Build and run the environment with ``utility/env_restart.sh``


Setup After Installation
------------------------

- **NOTE:** After deploying, you must wait for some seconds for the iRODS iCAT
  server to become active
    * To check the status, use ``docker logs sodar_irods -t``
- If you have existing projects in your local SODAR installation, go to your
  SODAR project and execute ``./manage.py synctaskflow``


Mapped Ports on the Host Machine
--------------------------------

- Development iRODS iCAT server: ``4477``
- Test iRODS iCAT server: ``4488``
- Redis: ``6633``


Tips and Tricks
---------------

- To erase data from iRODS, run ``utility/cleanup_irods.sh``
    * **WARNING:** This can not be undone!
    * The same for the iRODS test server: ``utility/cleanup_irods_test.sh``
- For a shortcut to access the iRODS shell on the iRODS iCAT server as the
  admin user, run ``utility/irods_shell.sh`` (or ``utility/irods_shell_test.sh``)
- To rebuild and redeploy the environment, run ``utility/env_restart.sh``.
    * **NOTE:** This will (naturally) erase all data in iRODS, so you'll have to
      run ``./manage.py synctaskflow`` again!
- Bring down the environment with ``utility/env_down.sh``
