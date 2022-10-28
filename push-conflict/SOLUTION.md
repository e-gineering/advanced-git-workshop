# Push Conflict (solution)

- [Push Conflict (solution)](#push-conflict-solution)
  - [Start](#start)
  - [Fix the rejected push](#fix-the-rejected-push)
    - [Option 1: rebase](#option-1-rebase)
    - [Option 2: merge](#option-2-merge)
  - [Finish](#finish)
    - [Fix up the merge conflict](#fix-up-the-merge-conflict)

## Start

Run `git log`, and you should see that you're one commit ahead from `origin/push-conflict` -- the `push-conflict` branch on the remote server.

Try running `git push`. You'll see an error message with some explanation why it was rejected. It also recommends that you run fetch first:

```
git fetch
```

## Fix the rejected push

There are several ways to go about fixing this:

### Option 1: rebase

You could rebase your changes on top of the new changes made on the remote server. This temporarily:
  - removes the commits you have locally
  - pulls down the updated branch from the remote
  - and then replays each of your local commits in order on the new changes.

Sometimes, if there are no conflicts in the files you and your coworker have edited, it goes off without a hitch. You'll see in this case, there is a merge conflict:

```
git pull --rebase
```

That's ok though. Just skip down to the `Finish` section below to fix the merge conflict.

### Option 2: merge

Another option is to merge in the remote branch into your local branch. Run fetch first to make sure you have an accurate view of the 

```
git fetch
```

```
git merge origin/push-conflict
```

This has the downside of creating an extra merge commit, where the rebase option wouldn't.

Jump down to the section below to fix the merge conflict.

## Finish

### Fix up the merge conflict

Get your bearings, and see what file is conflicting:

```
git status
```

Open the file for editing:

```
vim conflict.txt
```

Edit the file to be like:

```
First line
Line 2
Middle line
Line 4
Last line
```

Making sure to delete these lines:

```
<<<<<<< HEAD
=======
>>>>>>> db573ec (Added First line and Last line.)
```

Save and quit, and then run `git diff` to make sure the fix has been made:

```diff
diff --cc conflict.txt
index a3d0341,3988358..0000000
--- a/conflict.txt
+++ b/conflict.txt
@@@ -1,3 -1,3 +1,5 @@@
- Line 1
+ First line
++Line 2
  Middle line
- Line 3
++Line 4
+ Last line
```

Now stage the file to mark the conflict as fixed:

```
git add conflict.txt
```

And then commit with:

```
git commit
```

If you did the rebase in Option 1, continue the rebase to make sure there aren't more changes to be made:

```
git rebase --continue
```

Confirm that the rebase or merge have finished by running:

```
git status
```

Now you can push up your changes!

```
git push
```
