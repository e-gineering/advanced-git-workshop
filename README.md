# Advanced Git Workshop

A hands-on workshop designed to help developers master advanced Git concepts through practical, real-world scenarios. Each scenario runs in an isolated Docker container, allowing you to practice without fear of breaking anything.

## Overview

This workshop provides interactive learning experiences for common Git challenges that developers face in collaborative environments. Each scenario simulates a realistic situation and guides you through the resolution process.

## Prerequisites

- Docker installed and running
- Basic Git knowledge (commits, branches, push/pull)
- A terminal or command line interface

## Available Scenarios

### 1. Merge Conflict

**Start the scenario:**
```bash
docker run -it ghcr.io/egineering-llc/gitworkshop-merge-conflict
```

**What you'll learn:**
- How to identify merge conflicts
- Resolving conflicts between branches
- Completing a successful merge after conflict resolution

**Scenario:** Practice merging a `merge-conflict` branch into `main` when there are conflicting changes, and learn how to resolve them properly.

---

### 2. Push Conflict

**Start the scenario:**
```bash
docker run -it ghcr.io/egineering-llc/gitworkshop-push-conflict
```

**What you'll learn:**
- Handling conflicts when pushing to a shared branch
- Pulling and integrating remote changes
- Resolving conflicts between local and remote commits

**Scenario:** Simulate a common team scenario where someone else has pushed conflicting changes to the same branch you're working on.

---

### 3. Split Commit

**Start the scenario:**
```bash
docker run -it ghcr.io/egineering-llc/gitworkshop-push-conflict
```

**What you'll learn:**
- Using `git add -p` for partial staging
- Creating atomic commits
- Organizing changes into logical commits

**Scenario:** Learn how to split a large set of unstaged changes into multiple, well-organized commits for better code review and history.

---

### 4. Squash Commits

**Start the scenario:**
```bash
docker run -it ghcr.io/egineering-llc/gitworkshop-squash-commits
```

**What you'll learn:**
- Interactive rebasing with `git rebase -i`
- Squashing multiple commits into one
- Cleaning up commit history before creating a pull request

**Scenario:** Practice squashing messy work-in-progress commits into clean, logical commits that are ready for code review.

---

## How to Use This Workshop

1. **Choose a scenario** from the list above based on what you want to learn
2. **Run the Docker command** to start the interactive scenario
3. **Follow the instructions** in each scenario's README (located in the respective folder)
4. **Practice the Git commands** to resolve the situation
5. **Experiment freely** - the Docker container is isolated and can be restarted anytime

## Additional Resources

Each scenario folder contains a detailed README with:
- Step-by-step description of the problem
- Expected outcomes
- Tips for resolution

## Tips for Success

- Read the scenario description carefully before starting
- Use `git status` frequently to understand the current state
- Don't be afraid to make mistakes - you can always restart the Docker container
- Try to solve the scenarios without looking at solutions first
- Use `git log --oneline --graph` to visualize your branch history

## Contributing

Found an issue or want to add a new scenario? Contributions are welcome! Please submit a pull request or open an issue.

## License

This workshop is designed for educational purposes to help developers improve their Git skills.
