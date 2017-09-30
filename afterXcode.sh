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
sudo xcodebuild -license accept
#brew install mas
mas list
#mas install $(mas search Numbers | ggrep -P  "^\d+ Numbers$" | awk '{print $1}') &
#mas install $(mas search Keynote | ggrep -P  "^\d+ Keynote$" | awk '{print $1}') &
#mas install $(mas search Pages | ggrep -P  "^\d+ Pages$" | awk '{print $1}') &
text="Pages\nKeynote\nNumbers"
for i in $(echo -e $text); do mas install $(mas search $i | ggrep -P  "^\d+ $i$" | awk '{print $1}') ; done
