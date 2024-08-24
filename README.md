# Git Workflow Cheat Sheet


| Use-Case                 | Command Line Sequence  | 
| :------------            |:---------------| 
| Get a repo onto my local machine an start using the source code | `git clone git@github.com:org-name/repo-name` |
|  <br> |    |
| Which files have I modified? | `git status` |
| Which branch am I on? | `git branch` |
|  <br> |    |
| Create a new feature branch, and start working on it | `git branch <my/branchname>`<br>`git checkout <my/branchname>`<br>`git push origin <my/branchname>` |
|  <br> |    |
|  Add and commit my modified files | `git add .`<br>`git commit -m "my awesome edits"`    |
|  Push the commits to the remote repo | `git push origin <my/branchname>` |
|  I added a file by mistake. Undo the add | `git reset` |
|  I committed by mistake. Undo the commit | `git reset --soft ~HEAD-1` |
|  I committed by mistake. Undo the commit | `git reset --soft ~HEAD-1` |
|  Merge latest version from the main (a.k.a. master) branch into my feature branch. | `git fetch`<br>`git merge origin main` |
|  Create a pull request (a.k.a merge request)  and merge my feature branch into the main branch (a.k.a. master branch). | Both github and gitlab provide a URL link for your feature branch. Open the link in a browser, and click the button to create the request.  There are checkboxes for options to squash all commits and delete the branch after it is merged to the main branch. Prefer to squash and delete. <br><br>When your request is created you can add reviewers to review your code changes. <br><br>After your changes are code reviewed, then you can click a button to merge your changes into the main branch.|
|  <br> |    |
|  Save my recent edits temporarily and go back to the unedited version. | `git stash`<br>< ... now do other work ...><br> |
|  Restore my recent edits that I just stashed. | `git stash apply` |
|  <br> |    |
|  Oh Noes! git now says <br><b>"detached from head"</b><br>How the heck do I get out of this state?? | First, create a backup copy of any files you edited.<br>`git reset --hard HEAD`|

<br>

# Git Pro Tips

### Manage Many Branches
Use a naming convention to help.  This helps search for your branches, and separate from other folks' branches.<br>
A convention could be:  <your_first_name/your_feature_name01>
Example:  "paul/bugfix42" <br>
Alternatively use your initials:  <your_initials/your_feature_name01>
Example:  "pm/bugfix42" 

How many branches do you have?  Depends on your personal preference and depends on what you are working on.  Consider branches are free, they don't cost anything.  You might have 100 branches in a month, which maybe averages 4 branches per day.  Alternatively, you might prefer to reuse your branch names. So perhaps you only have one or two branches.  How many branches is your own personal preference.  If you do have 100 branches, be a good citizen and clean up by deleting old branches.  I typically delete my old branches once a month or near the end of a project, thus cleanup and keep organized.


### Make Git Easier To Use
Add aliases to your shell.  These are shortcuts that reduce typing the most common commands.

```
alias gs='git status'
alias gb='git branch'
alias gf='git fetch'
```

### Make Git Easier To Use 
Configure your terminal so it always shows which branch you are on without typing `git branch`.

```
# Extract info from git command line
git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'	
}

git_branch_paren() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Bash shell prompt
export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h:\[\033[01;34m\]\w\[\033[33m\]\$(git_branch_paren)\[\033[00m\]$ "

```



