FROM node:14.15-alpine

RUN npm install netlify-cli -g

CMD ["sh"]
