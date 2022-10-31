rsnapshot-client-setup
=========

Role to set up a host as a rsnapshot client for rootless backups.  The role creates a local account, and it gets sudo access to rsync to perform the backup related tasks.

Requirements
------------

`ssh-cert-auth` should be run before this role, so that the directories needed for ssh key authorization exist.

`rsnapshot_ssh_pub` - This variable needs to be set since the role uses ssh keys for system access during the backup.

Role Variables
--------------

**rsnapshot_ssh_pub** - This is the ssh public key that will be used to log into the client.  

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - role: rsnapshot-client-setup
           vars:
            - rsnapshot_ssh_pub: "ssh pub key"
License
-------

MIT

Author Information
------------------

[John Petro](https://github.com/jcpetro97)