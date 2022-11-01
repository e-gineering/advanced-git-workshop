# Squash Commits (solution)

See a history of your commits with:

```
git log
```

You want to squash everything in your branch, so scroll down in the `git log` output until you see the `main` branch.

Start an interactive rebase. We're not changing the base of our branch (it'll remain branched off the same commit that's on the `main` branch), but we want to open up the interactive mode it has to start squashing commits together. 

```
git rebase -i main
```

In this case, `main` could've been `origin/main` or the commit hash, but either one will do since they refer to the same commit here. That's not always the case though, so you'll normally want to double-check the `git log` output.

In the interactive rebase, you'll see git has opened an editor, with a list of your commits in oldest-to-newest order, with the special command `pick` next to each commit. If you were to save and quit the editor right now, git would start at the top of the list, and pick each one (using it just as it is) until it gets to the end of the list.

You'll see a list of possible commands or actions that git can take on each commit. The most common ones would probably be:
  - `pick`: use the commit as it is
  - `squash`: combine the changes into the previous commit
  - `reword`: edit the commit message of a commit
  - `drop`: delete a commit

So you'll want to keep the oldest commit as `pick`, but change the newer commits below it from `pick` to `squash`. You can do multiple at once, so try changing the 3 below the `Install eslint-config-airbnb` commit to `squash`.

Then leave the `Add the goodbye endpoint` commit below that as `pick`, and change the final commit to `squash`.

The final result should look like this (with different commit hashes):

```
pick 6116bba Install eslint-config-airbnb
squash 01639cc oops forgot to update the package-lock.json
squash 32f8981 forgot the peer dependencies
squash caed21e and set up the eslintrc file
pick 4799d27 Add the goodbye endpoint
squash 079a6ea Fix filename spelling
```

Save and quit your editor, and a new editor will open where you can edit the commit message for your first squashed commit. You'll probably want to edit it to be just the `Install eslint-config-airbnb` message. Save and quit again, and another editor will open with the same thing for the second squashed commit. The message `Add the goodbye endpoint` probably makes sense for this one too, and you can delete the rest of the commit message.

Check `git log` again to make sure you have just two commits on top of `main`. Feel free to re-run `git rebase -i main` to make more changes if needed.

Now push up your changes to the remote:

```
git push
```

You'll find that your push is rejected because you rewrote the commit history on your local branch, and git doesn't know how to update the remote branch anymore. Since you're working on a feature branch that only you are working on, it's appropriate to force-push your branch up:

```
git push -f
```

And you're done!
