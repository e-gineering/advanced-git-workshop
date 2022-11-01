# syntax=docker/dockerfile:1

FROM alpine:3.16

RUN <<EOF

  # Install some packages
  #   less: installing the GNU less instead of the busybox less, to show colors in the `git diff` output
  #   git-perl: getting the interactive git commands to work
  #   mandoc & git-doc: installing the man pages for git
  apk add --no-cache \
    bash \
    bash-completion \
    git \
    git-doc \
    git-perl \
    less \
    mandoc \
    vim

  # Make the command prompt in bash show the working directory instead of `bash-5.1`
  echo 'PS1="\w $ "' >> ~/.bashrc

  # Get our git config set up
  git config --global init.defaultBranch main
  git config --global user.name "Workshop Participant"
  git config --global user.email workshop_participant@workshop.e-gineering.com
  git config --global pull.rebase false

  mkdir /git
  cd /git

  # Create the git-workshop "remote" repo
  git init --bare git-workshop.git

  # Prepare the git-workshop-clone repo
  git init git-workshop-clone
  cd git-workshop-clone
  echo '# Git Workshop' > README.md
  git add README.md
  git commit -m "first commit"
  git branch -M main
  git remote add origin /git/git-workshop.git
  git push -u origin main

EOF

WORKDIR /git/git-workshop-clone

ENTRYPOINT bash
