# syntax=docker/dockerfile:1

FROM ghcr.io/egineering-llc/gitworkshop-common

RUN <<EOF

  git checkout -b push-conflict
  echo 'Middle line' > conflict.txt
  git add conflict.txt
  git commit -m 'Initial state for conflict commit exercise.'
  git push -u origin push-conflict
  echo -e "First line\n$(cat conflict.txt)" > conflict.txt
  echo "Last line" >> conflict.txt
  git add conflict.txt
  git commit -m 'Added First line and Last line.'
  cd ..
  git clone ./git-workshop.git git-workshop-conflict
  cd git-workshop-conflict
  git checkout push-conflict
  echo -e "Line 1\n$(cat conflict.txt)" > conflict.txt
  echo "Line 3" >> conflict.txt
  git add conflict.txt
  git commit -m 'Added line 1 and Line 3.'
  git push origin push-conflict

EOF
