# syntax=docker/dockerfile:1

FROM ghcr.io/egineering-llc/gitworkshop-common

RUN <<EOF

  apk add --no-cache nodejs npm

  # Remove the existing readme to keep create-next-app from complaining
  rm README.md

  npx create-next-app@13.0.0 .
  git add -A
  git commit -m 'Install Next using create-next-app'
  git push

  git checkout -b feature/start-setting-up-repo

  # Add a package to just the package.json
  npm install --save-dev eslint-config-airbnb
  git checkout package-lock.json
  git commit -am 'Install eslint-config-airbnb'

  # Update the package lock
  npm i
  git commit -am 'oops forgot to update the package-lock.json'

  # Install the needed peer dependencies
  npx install-peerdeps --dev eslint-config-airbnb
  git commit -am 'forgot the peer dependencies'

  # Set up the eslintrc file
  node -e 'console.log(JSON.stringify({"extends": ["airbnb"]}, null, 2))' > .eslintrc.json
  git add -A
  git commit -m 'and set up the eslintrc file'

  # Add the goodbye page, misspelled
  cp pages/api/hello.js pages/api/goodbyee.js
  git add -A
  git commit -am 'Add the goodbye endpoint'

  # And now fix the spelling
  mv pages/api/goodbyee.js pages/api/goodbye.js
  git add -A
  git commit -m 'Fix filename spelling'

  # Push up our branch, so we will need to force-push to get the remote updated after squashing
  git push -u origin HEAD

EOF
