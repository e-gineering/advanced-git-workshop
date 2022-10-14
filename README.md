
# Scenarios

## Merge Conflict
`Dockerfile.merge-conflict`

Simulates an issue when a branch (named `merge-conflict` in this exercise) is being merged into another branch (e.g. `main`) but there is a conflict.

By default you start with the `main` branch checked out.

Execute the following command to attempt to merge the `merge-conflict` branch into `main`.
```
git merge merge-conflict
```
You should see a conflict error.

The goal is to be able to merge the branch successfully by resolving the conflict.

Preferrably you want to end with a file that looks like below:
```
+First line
+Line 2
 Middle line
+Line 4
+Last line
```

## Push Conflict
`Dockerfile.push-conflict`

Simulates an issue when two separate git users are committing to the same branch with conflicting changes.

The current local repository has 1 commit that is not yet pushed to the remote repository:
```
+First line
 Middle line
+Last line
```

However, someone else had pushed changes into the same branch in the remote repository that conflicts with your change:
```
+Line 1
 Middle line
+Line 3
```

The goal is to push your changes keeping all the changes (modified to make sense):
```
+First line
+Line 2
 Middle line
+Line 4
+Last line
```

## Split Commit
`Dockerfile.split-commit`

Simulates having to split a set of unstaged changes into two (or more commits).

There are uncommitted changes in the `split.txt` file. 

Running `git diff` should look like this:
```
/git/git-workshop-clone # git diff
diff --git a/split.txt b/split.txt
index 3ea4248..3988358 100644
--- a/split.txt
+++ b/split.txt
@@ -1 +1,3 @@
+First line
 Middle line
+Last line
```

The goal is to make two separate commits:
* With just the `First line` change
* With just the `Second line` change
