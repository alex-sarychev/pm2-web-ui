FROM node:16.13.2

ENV APP_DIR=/app2

RUN ls -al
COPY . $APP_DIR
RUN cd $APP_DIR
WORKDIR $APP_DIR
#RUN rm -rf /app2/node_modules
RUN npm install
RUN npm install -g forever

#RUN npm run build

CMD forever -a -c "npm run dev" -o /tmp/out.log -e /tmp/err.log .
#CMD forever -a -c "npm run dev"