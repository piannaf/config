#!/usr/bin/env bash

###############################################################################
# FUNCTIONS
###############################################################################

#------------------------------------------------------------------------------
# cmd - run a command with debug tracing on
#------------------------------------------------------------------------------
cmd () {
	set -x
	$*
	# trick from https://stackoverflow.com/a/19226038
	{ set +x; } 2>/dev/null
}

set_vimrc () {
	SOURCE=$(find $(pwd) -name .vimrc)
	TARGET=$HOME/.vimrc

	cmd ln -hfs $SOURCE $TARGET
}

set_dotvim () {
	SOURCE=$(find $(pwd) -name .vim)
	TARGET=$HOME/.vim

	cmd ln -hfs $SOURCE $TARGET
}

###############################################################################
# MAIN
###############################################################################

#
# (over)write links to vim config
#
set_vimrc
set_dotvim
