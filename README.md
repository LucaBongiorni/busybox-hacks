busybox-hacks
------------

Fork of busybox with special hacks.

HACKS
-----
ALT_PROFILE: Have busybox sh source a profile other than /etc/profile. Useful where you're putting busybox on a system you don't own and the default /etc/profile interferes.


BUILDING
--------
For convenience there is a .config included that builds a static MIPS binary with options turned on that I find useful.

To build with this config do:

Ensure you have a mips-linux-gcc in your $PATH.

$ make busybox-mips

To build with the ALT_PROFILE option, set a CFLAGS environment variable on the command line:

$ CFLAGS='-DALT_PROFILE=\"/tmp/profile\"' make busybox-mips
