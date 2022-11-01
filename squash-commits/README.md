# Squash Commits

## Start the scenario

```
docker run -it ghcr.io/egineering-llc/gitworkshop-squash-commits
```

## Description

Simulates having to squash several commits together.

So far, you've added these 4 commits while setting up a new package called `eslint-config-airbnb`:
  - `Install eslint-config-airbnb`
  - `oops forgot to update the package-lock.json`
  - `forgot the peer dependencies`
  - `and set up the eslintrc file`

And then you've started working on a `goodbye` endpoint, but accidentally misspelled it in the first commit, so you made a second one to fix that:
  - `Add the goodbye endpoint`
  - `Fix filename spelling`

You've pushed up your local `feature/start-setting-up-repo` branch to the remote, and you're just about ready to make a pull request, but you'd like to squash the commits together, to make it easier on your reviewer to review the changes.

Your goal is to:
  - Squash the first 4 commits into 1 commit named: `Install eslint-config-airbnb`
  - Squash the last 2 commit into 1 commit named: `Add the goodbye endpoint`
  - And then push the new commits up to your remote branch.
