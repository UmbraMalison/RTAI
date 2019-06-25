#!/usr/bin/env bash

autoreconf -v --install || \
	{
		echo -e "Error running autoreconf.\n" ; exit 1 ;
	}

# Do a temporary configure to generate initial makefiles
./configure --with-linux-dir="/lib/modules/$(uname -r)/build" "$@" || \
	{
		echo -e "Error running configure.\n" ;	exit 1 ;
	}