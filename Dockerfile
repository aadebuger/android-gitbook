FROM dockerfile/nodejs:latest 
MAINTAINER hua zhuang  "zhvxxh@gmail.com"

RUN apt-get update 
RUN apt-get install -y git 
#RUN git clone https://github.com/pchab/ProjectRTC.git ProjectRTC
#ADD ProjectRTC /ProjectRTC
RUN mkdir /mygitbook
WORKDIR /mygitbook
RUN npm install  gitbook -g 
#RUN gitbook init 
#npm start
#RUN apt-get install -y imagemagick
#ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 4000
#CMD ["npm","start"]
#CMD ["node","app.js"]
CMD ["gitbook", "serve", "/gitbook"]
