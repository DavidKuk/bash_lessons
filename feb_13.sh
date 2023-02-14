#!/bin/bash

# Check return code
# First argument: return code
function check_exit_code(){
	echo "Function name: ${FUNCNAME[0]}"
	return_code=$1
	if [[ $# != 1 ]]
	then
			echo "The count of arguments is WRONG!"
			exit 1
	fi
	if [[ $return_code != 0 ]]
	then
		echo "Function return code is not ZERO!"
		exit 1
	fi
}

# This function prints out something.
# Arguments:
# First argument: something that need to print
function function_arguments(){
	echo "Function name: ${FUNCNAME[0]}"
	echo "Function body"
	cmd=$(ls p)
}

function main(){
	echo "Function name: ${FUNCNAME[0]}"
	echo $1
	function_arguments "something"
	check_exit_code $?
}

main $1
echo $1
