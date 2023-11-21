FROM ubuntu
  COPY lab.sh .
  RUN chmod ugo+x lab.sh
  CMD ./lab.sh
