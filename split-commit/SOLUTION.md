# Split Commit (solution)

Get your bearings with:

```
git status
```

We see one file has changes. Check to see what those are:

```
git diff
```

Stage just the first line by running (`-p` being short for `--patch`):

```
git add -p
```

You'll enter an interactive mode, where you'll be asked a question for each section of changes (each "hunk" of code), whether you want to stage the section shown in the diff at this time. You respond to each question by hitting one of these keys as a response: `y,n,q,a,d,s,e,?`

To see a full list of the options, run `man git-add`, press <kbd>/</kbd> to start searching, type `patch`, and then <kbd>Enter</kbd> to search. Press <kbd>n</kbd> several times until you get to the list of the response keys.

The main ones we'll use are <kbd>y</kbd> (yes), <kbd>n</kbd> (no), and <kbd>s</kbd> (split).

For this first hunk of code, we don't want to stage all of it, since it includes both the first and last lines, so answer with <kbd>s</kbd> (split), and hit <kbd>Enter</kbd>.

It splits it into two hunks, and asks you if you want to stage this line. Answer <kbd>y</kbd> to stage the first one, and then <kbd>n</kbd> for the second one, to skip staging the last line at this time.

Double-check that you've staged the changes you want with:

```
git diff --staged
```

(If you've found you've made a mistake, run `git reset` to do a soft reset that keeps your changes locally.)

Commit your first set of changes with something like:

```
git commit -m 'Adding the first line'
```

Run `git diff` again to see what changes we have left to commit.

You could run `git add -p` again, and stage this last hunk of changes, but since you want to commit all of these changes, you can commit them with:

```
git commit -am 'Adding the last line'
```

(`-a` adds any files that have changes, as long as git is currently tracking them.)

Check that your recent commits have the changes that you want with:

```
git log -p
```

(`-p` shows the diff of the changes along with each commit message.)

And you're done!
