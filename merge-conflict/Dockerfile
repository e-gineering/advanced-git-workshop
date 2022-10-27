# syntax=docker/dockerfile:1

FROM ghcr.io/egineering-llc/gitworkshop-common

RUN <<EOF

  git checkout main
  echo 'Middle line' > conflict.txt
  git add conflict.txt
  git commit -m 'Initial state for conflict commit exercise.'
  git push origin main
  git checkout -b merge-conflict
  git checkout main
  git checkout -b another-branch
  echo -e "Line 1\n$(cat conflict.txt)" > conflict.txt
  echo "Line 3" >> conflict.txt
  git add conflict.txt
  git commit -m 'Added line 1 and Line 3.'
  git push origin another-branch
  git checkout main
  git merge origin/another-branch
  git push origin main
  git checkout merge-conflict
  echo -e "First line\n$(cat conflict.txt)" > conflict.txt
  echo "Last line" >> conflict.txt
  git add conflict.txt
  git commit -m 'Added First line and Last line.'
  git push origin merge-conflict
  git checkout main

EOF
