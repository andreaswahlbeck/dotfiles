[user]
	email = andreas.svanberg@mittmedia.se
	name = Andreas Svanberg
[core]
	excludesfile = ~/.gitignore_global
	editor = vim
[difftool "sourcetree"]
	cmd = opendiff \"$LOCAL\" \"$REMOTE\"
	path =
[mergetool "sourcetree"]
	cmd = /Applications/SourceTree.app/Contents/Resources/opendiff-w.sh \"$LOCAL\" \"$REMOTE\" -ancestor \"$BASE\" -merge \"$MERGED\"
	trustExitCode = true

[branch]
  color = auto

[diff]
  color = auto

[push]
  default = upstream

[status]
  color = auto

[alias]
  amend = commit --amend
  br = branch
  ci = commit
  co = checkout
  di = diff
  ds = diff --staged
  l = log --graph --pretty=format':%C(yellow)%h%Cgreen%d%Creset %s %C(white) %an, %ar%Creset'
  tree = log --graph --decorate --pretty=oneline --abbrev-commit
  merge = merge --ff-only
  pullom = !git checkout master && git pull origin master
  pushom = push origin master
  st = status -sb
  hack = !CURRENT=$(git branch | grep '*' | awk '{print $2}') && git checkout develop && git pull origin develop && git checkout $CURRENT && git rebase develop
  ship = !CURRENT=$(git branch | grep '*' | awk '{print $2}') && git checkout develop && git merge $CURRENT && git push origin develop && git checkout $CURRENT
  wc = whatchanged -p --abbrev-commit --pretty=medium
