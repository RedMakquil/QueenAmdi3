FROM fusuf/whatsasena:latest

RUN git clone https://github.com/dinukahimsara1/QueenAmdi3 /root/QueenAmdi
WORKDIR /root/QueenAmdi/
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
