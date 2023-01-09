FROM node:lts-alpine3.14
WORKDIR /site
COPY package.json /site
COPY _config.yml /site
COPY source/_data /site/source/_data
RUN mkdir -p /site/source/_posts
COPY themes /site/themes
RUN npm install hexo-cli -g
RUN npm install
CMD node --max-old-space-size=4096 node_modules/hexo-cli/bin/hexo s
EXPOSE 4000
