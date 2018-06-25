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

run_gitconfig () {
	cmd ./gitconfig/run.sh
}

run_vimconfig () {
	cmd ./vimconfig/run.sh
}

run_all () {
	run_vimconfig
	run_gitconfig
}

###############################################################################
# MAIN
###############################################################################

#
# Run all config scripts
#
run_all
