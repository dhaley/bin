#!/bin/sh
# Add org file changes to the repository
#REPOS="org doc.norang.ca www.norang.ca"
REPOS="org gnus .emacs.d cu debian vinylisland"

for REPO in $REPOS
do
    echo "Repository: $REPO"
    cd ~/git/$REPO
    git push dhaley
done
