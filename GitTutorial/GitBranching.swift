//
//  GitBranching.swift
//  GitTutorial
//
//  Created by JustMac on 13/11/20.
//

import Foundation


/*
 Last login: Fri Nov 13 17:25:12 on ttys000

 The default interactive shell is now zsh.
 To update your account to use zsh, please run `chsh -s /bin/zsh`.
 For more details, please visit https://support.apple.com/kb/HT208050.
 Admins-iMac:~ Justmac$ cd /Users/Justmac/Documents/exlygenze_ios
 Admins-iMac:exlygenze_ios Justmac$ git status
 On branch master
 Your branch is up to date with 'origin/master'.

 Untracked files:
   (use "git add <file>..." to include in what will be committed)
     eXLygenze.xcworkspace/xcuserdata/Justmac.xcuserdatad/UserInterfaceState.xcuserstate

 nothing added to commit but untracked files present (use "git add" to track)
 Admins-iMac:exlygenze_ios Justmac$ git branch
 * master
 Admins-iMac:exlygenze_ios Justmac$ cd /Users/Justmac/Documents/Test_iOS/GitTutorial
 Admins-iMac:GitTutorial Justmac$ git status
 On branch NewFeature
 Your branch is up to date with 'origin/NewFeature'.

 nothing to commit, working tree clean
 Admins-iMac:GitTutorial Justmac$ git checkout master
 error: pathspec 'master' did not match any file(s) known to git
 Admins-iMac:GitTutorial Justmac$ git checkout main
 Switched to branch 'main'
 Your branch is up to date with 'origin/main'.
 Admins-iMac:GitTutorial Justmac$ git branch
   NewFeature
 * main
 Admins-iMac:GitTutorial Justmac$ git status
 On branch main
 Your branch is ahead of 'origin/main' by 1 commit.
   (use "git push" to publish your local commits)

 nothing to commit, working tree clean
 Admins-iMac:GitTutorial Justmac$ touch .gitignore
 Admins-iMac:GitTutorial Justmac$ git branch
   NewFeature
 * main
 Admins-iMac:GitTutorial Justmac$ git checkout NewFeature
 M    GitTutorial/NewFeature.swift
 Switched to branch 'NewFeature'
 Your branch is up to date with 'origin/NewFeature'.
 Admins-iMac:GitTutorial Justmac$ git checkout main
 Switched to branch 'main'
 Your branch is ahead of 'origin/main' by 1 commit.
   (use "git push" to publish your local commits)
 Admins-iMac:GitTutorial Justmac$ git pull
 Already up to date.
 Admins-iMac:GitTutorial Justmac$ git checkout NewFeature
 Switched to branch 'NewFeature'
 Your branch is up to date with 'origin/NewFeature'.
 Admins-iMac:GitTutorial Justmac$ git checkout main
 Switched to branch 'main'
 Your branch is ahead of 'origin/main' by 1 commit.
   (use "git push" to publish your local commits)
 Admins-iMac:GitTutorial Justmac$ git checkout NewFeature
 Switched to branch 'NewFeature'
 Your branch is up to date with 'origin/NewFeature'.
 Admins-iMac:GitTutorial Justmac$ git checkout main
 Switched to branch 'main'
 Your branch is ahead of 'origin/main' by 1 commit.
   (use "git push" to publish your local commits)
 Admins-iMac:GitTutorial Justmac$ git checkout main
 Already on 'main'
 Your branch is ahead of 'origin/main' by 2 commits.
   (use "git push" to publish your local commits)
 Admins-iMac:GitTutorial Justmac$ git checkout NewFeature
 Switched to branch 'NewFeature'
 Your branch is up to date with 'origin/NewFeature'.
 Admins-iMac:GitTutorial Justmac$ git checkout main
 Switched to branch 'main'
 Your branch is behind 'origin/main' by 4 commits, and can be fast-forwarded.
   (use "git pull" to update your local branch)
 Admins-iMac:GitTutorial Justmac$ git merge NewFeature
 Already up to date.
 Admins-iMac:GitTutorial Justmac$ git commit
 On branch main
 Your branch and 'origin/main' have diverged,
 and have 1 and 4 different commits each, respectively.
   (use "git pull" to merge the remote branch into yours)

 nothing to commit, working tree clean
 Admins-iMac:GitTutorial Justmac$ git push
 Username for 'https://github.com': skbushra@gmail.com
 Password for 'https://skbushra@gmail.com@github.com':
 remote: Invalid username or password.
 fatal: Authentication failed for 'https://github.com/BushraShaikh79/GitTutorial.git/'
 Admins-iMac:GitTutorial Justmac$ git push
 Username for 'https://github.com': skbushrar@gmail.com
 Password for 'https://skbushrar@gmail.com@github.com':
 To https://github.com/BushraShaikh79/GitTutorial.git
  ! [rejected]        main -> main (non-fast-forward)
 error: failed to push some refs to 'https://github.com/BushraShaikh79/GitTutorial.git'
 hint: Updates were rejected because the tip of your current branch is behind
 hint: its remote counterpart. Integrate the remote changes (e.g.
 hint: 'git pull ...') before pushing again.
 hint: See the 'Note about fast-forwards' in 'git push --help' for details.*/
 
 
 //MARK: - steps to follow while merging the branch source to main/master
 /*Admins-iMac:GitTutorial Justmac$ git checkout main
 Already on 'main'
 Your branch and 'origin/main' have diverged,
 and have 1 and 4 different commits each, respectively.
   (use "git pull" to merge the remote branch into yours)
 Admins-iMac:GitTutorial Justmac$ git pull
 Merge made by the 'recursive' strategy.
  README.md | 4 ++++
  1 file changed, 4 insertions(+)
  create mode 100644 README.md
 Admins-iMac:GitTutorial Justmac$ git merge NewFeature
 Already up to date.
 Admins-iMac:GitTutorial Justmac$ git commit
 On branch main
 Your branch is ahead of 'origin/main' by 2 commits.
   (use "git push" to publish your local commits)

 nothing to commit, working tree clean
 Admins-iMac:GitTutorial Justmac$ git push
 Enumerating objects: 4, done.
 Counting objects: 100% (4/4), done.
 Delta compression using up to 4 threads
 Compressing objects: 100% (2/2), done.
 Writing objects: 100% (2/2), 334 bytes | 334.00 KiB/s, done.
 Total 2 (delta 1), reused 0 (delta 0)
 remote: Resolving deltas: 100% (1/1), completed with 1 local object.
 To https://github.com/BushraShaikh79/GitTutorial.git
    aca8fd2..2346ed5  main -> main
 Admins-iMac:GitTutorial Justmac$
 */

//MARK: - Note : when type command git commit
/* type :wq enter*/
