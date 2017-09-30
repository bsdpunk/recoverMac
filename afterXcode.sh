#!/bin/bash - 
#===============================================================================
#
#          FILE: afterXcode.sh
# 
#         USAGE: ./afterXcode.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 09/30/2017 14:39
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
brew install mas
mas list

