# node-netlify-cli

`node:14.15-alpine` docker image with netlify-cli installed globally via npm.

Using this image prevents you from adding `netlify-cli` to your project dependencies or from running `npm install -g netlify-cli` in your CI pipeline (adds an extra 1+ min every build)

**Build**

    docker build -t dotspencer/node-netlify:latest .

**Push** (after logging in via docker desktop)

    docker push dotspencer/node-netlify-cli:latest

**Gitlab CI Usage Example** (react app)

```
deploy:
  stage: deploy
  image: dotspencer/node-netlify-cli
  script:
    - netlify deploy
      --dir dist
      --site $NETLIFY_SITE_ID
      --auth $NETLIFY_AUTH_TOKEN
      --prod
      --message "commit... $CI_COMMIT_SHORT_SHA"
  cache: {}
  only:
    - master
```
