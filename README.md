# Boxes

**Playing with Vagrant & Puppet**

### Some Useful Commands

Getting the precise32 box manually:

```
vagrant box add precise32 http://files.vagrantup.com/precise32.box
```

Vendoring a puppet module:

```
puppet module install <MODULE_NAME> --modulepath puppet/modules/
```
