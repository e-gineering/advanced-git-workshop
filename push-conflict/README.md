# Push Conflict

## Start the scenario

```
docker run -it ghcr.io/egineering-llc/gitworkshop-push-conflict
```

## Description

Simulates an issue when two separate git users are committing to the same branch with conflicting changes.

The current local repository has 1 commit that is not yet pushed to the remote repository:
```diff
+First line
 Middle line
+Last line
```

However, someone else had pushed changes into the same branch in the remote repository that conflicts with your change:
```diff
+Line 1
 Middle line
+Line 3
```

The goal is to push your changes keeping all the changes (modified to make sense):
```diff
+First line
+Line 2
 Middle line
+Line 4
+Last line
```
