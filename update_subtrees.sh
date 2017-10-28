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

update_gitconfig () {
	SOURCE=git@github.com:piannaf/gitconfig.git
	TARGET=gitconfig/

	git sbu $SOURCE $TARGET
}

update_vimconfig () {
	SOURCE=git@github.com:piannaf/vimconfig.git
	TARGET=vimconfig/

	git sbu $SOURCE $TARGET
}

###############################################################################
# MAIN
###############################################################################

#
# Update all subtrees
#
update_gitconfig
update_vimconfig
