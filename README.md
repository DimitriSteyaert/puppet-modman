# modman

[![Build Status](https://travis-ci.org/DimitriSteyaert/puppet-modman.svg)](https://travis-ci.org/DimitriSteyaert/puppet-modman)

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What does the modman module do](#module-description)
3. [Setup - The basics of getting started with modman](#setup)
    * [What modman affects](#what-modman-affects)
    * [Beginning with modman](#beginning-with-modman)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)
7. [Contributors](#contributors)

## Overview

The modman module installs modman on your machine. [modman](https://github.com/colinmollenhour/modman)
is the Magento module manager.

## Module Description

The modman CLI tool is installed by this module with a default set of parameters.
These parameters such as the installation destination and repository can be adjusted
to your likings.

## Setup

### What modman affects

* Creates the folder modman under `/usr/share/`
* Installs git if this isn't already installed
* Creates a symlink in `/usr/bin/`
* Creates a symlink to bash_completion in `/etc/bash_completion.d/`

### Beginning with modman

To install modman just use `include modman` and you are set to go.

## Usage

To fully alter the installation destination and repository you can use this
extended version of the class.

```
class { 'modman':
  install_dest  => '/usr/local/src/modman',
  repository    => 'https://github.com/colinmollenhour/modman',
  exec_location => '/usr/local/bin/',
}
```

## Limitations

This module should work on all the flavours of Debian/Ubuntu and RedHat/CentOS.

## Development

Don't hesitate to open an [issue](https://github.com/DimitriSteyaert/puppet-modman/issues)
if you should encounter any bugs or other issues.

## Contributors

Just me at the moment:

* Dimitri Steyaert <puppet@dimitri.eu>
