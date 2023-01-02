---
title: Branching and Merging Best Practices
image: git
tags:
- Workflow
---
## Git Branching model[^2]

Git allows you to have multiple local branches that can be entirely independent of each other.

When you push to a remote repository, you do not have to push all of your branches. You can choose to share just one of your branches, a few of them, or all of them.

**Frictionless Context Switching:** Create a branch to try out an idea, commit a few times, switch back to where you branched from, apply a patch, switch back to where you are experimenting, and merge it in.

**Role-Based Codelines:** Have a branch that always contains only what goes to production, another that you merge work into for testing, and several smaller ones for day to day work.

**Feature Based Workflow:** Create new branches for each new feature you're working on so you can seamlessly switch back and forth between them, then delete each branch when that feature gets merged into your main line.

**Disposable Experimentation:** Create a branch to experiment in, realize it's not going to work, and just delete it - abandoning the work—with nobody else ever seeing it (even if you've pushed other branches in the meantime).

## Best Practices[^1]

1. After you've selected a feature to work on, create a branch in your local repo to build it in.
    * `$ git checkout -b calaway/short_description_of_feature`
1. Implement the requested feature, make sure all tests are passing, and commit all changes in the new branch.
1. Checkout the master branch locally.
    * `$ git checkout master`
1. Pull down the master branch from GitHub to get the most up to date changes from others. If you practice git workflow as described here you should never have a merge conflict at this step.
    * `$ git pull origin master`
1. Make sure all tests are passing on master and then checkout your new branch.
    * `$ git checkout calaway/short_description_of_feature`
1. From your new branch, merge in your local master branch.
    * `$ git merge master`
1. Resolve any merge conflicts, make sure all tests are passing on the new branch, and then commit all changes from the merge.
    * `$ git add .`
    * `$ git commit -m "Merge in master."`
1. Push the feature branch to the remote repo.
    * `git push --set-upstream origin calaway/short_description_of_feature`
1. Submit a pull request on GitHub asking to merge the branch into master.
1. A teammate reviews the code for quality and functionality.
1. The teammate merges the pull request and deletes your branch from GitHub.

[^1]: **Title:** [Git Branch Merging Best Practices](https://gist.github.com/calaway/ea880263b0c0495bb00ee877f001dc59)<br>
**Publication:** [GitHub Gist](https://gist.github.com/discover)<br>
**Date:** ~2017<br>
**Author(s):** [Calaway](https://gist.github.com/calaway)<br>
[^2]: **Title:** [Pro Git book](https://git-scm.com/book/en/v2/Distributed-Git-Contributing-to-a-Project)<br>
**Publication:** [git](https://git-scm.com/)<br>
**Author(s):** Scott Chacon and Ben Straub<br>
