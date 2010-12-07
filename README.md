# MCAU Plugins

This repository brings together all the git repos we use into one easily usable
repository.

## How To Clone

1. `git clone http://github.com/MCAU/AllPlugins.git plugins`
2. `git submodule init`

## How To Update

	$ git pull
	$ git submodule update --init *

This can also be aliased for your convienience:

    $ alias allup='git pull; git submodule update --init *'
	$ allup

## Adding a New Repository

	$ git submodule add <repo path> <dirname>
	$ git commit -m 'Adding <repo name>'