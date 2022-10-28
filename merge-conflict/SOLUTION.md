# Merge Conflict (solution)

Start merging in the `merge-conflict` branch into `main`:

```
git merge merge-conflict
```

You'll get a merge conflict message:
```
CONFLICT (content): Merge conflict in conflict.txt
```

Get your bearings to make sure there aren't any other conflicts:

```
git status
```

Ok good, it's just the `conflict.txt` file that has the conflict.

Get a overview of the conflict:

```
git diff
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
>>>>>>> merge-conflict
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

Check the status and the log to make sure no other changes need to be made, and that your commit has been made:

```
git status
git log
```

All done!
