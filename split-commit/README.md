# Split Commit

## Start the scenario

```
docker run -it ghcr.io/egineering-llc/gitworkshop-push-conflict
```

## Description

Simulates having to split a set of unstaged changes into two (or more commits).

There are uncommitted changes in the `split.txt` file. 

Running `git diff` should look like this:
```diff
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
