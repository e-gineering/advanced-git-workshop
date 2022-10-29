# syntax=docker/dockerfile:1

FROM ghcr.io/egineering-llc/gitworkshop-common

RUN <<EOF

  git checkout -b split-commit-exercise
  echo 'Middle line' > split.txt
  git add split.txt
  git commit -m 'Initial state for split commit exercise.'
  echo -e "First line\n$(cat split.txt)" > split.txt
  echo "Last line" >> split.txt

EOF
