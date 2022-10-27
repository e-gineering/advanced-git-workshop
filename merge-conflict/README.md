# Merge Conflict

## Start the scenario

```
docker run -it ghcr.io/egineering-llc/gitworkshop-merge-conflict
```

## Description

Simulates an issue when a branch (named `merge-conflict` in this exercise) is being merged into another branch (e.g. `main`) but there is a conflict.

By default you start with the `main` branch checked out.

Execute the following command to attempt to merge the `merge-conflict` branch into `main`.
```
git merge merge-conflict
```
You should see a conflict error.

The goal is to be able to merge the branch successfully by resolving the conflict.

Preferrably you want to end with a file that looks like below:
```diff
+First line
+Line 2
 Middle line
+Line 4
+Last line
```
