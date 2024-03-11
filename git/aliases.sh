#!/usr/bin/env bash

# This will set various git aliases in the global git config, that's why this file should not be
# included in any source file like .zshrc

# Commit with -m flag
git config --global alias.cm 'commit -m'

# This will pull changes from remote and rebase any local commits on top of them
git config --global alias.update 'pull --rebase --prune'

# Git checkout and Git checkout new branch
git config --global alias.co checkout
git config --global alias.cob 'checkout -b'

# Git save and undo
# Whenever you want to temporarily 'save' something, use git save, this will create
# a commit with the text 'SAVEPOINT' of all the modified files. Whenever you're ready
# to continue work, run `git undo` which reverts the latest commit but keeps all changes.
git config --global alias.save '!git add -A && git commit -m "SAVEPOINT"'
git config --global alias.undo 'reset HEAD~1 --mixed'

# Amend the previous commit
git config --global alias.amend 'commit --amend'

# Nicer git log
git config --global alias.logg "log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
