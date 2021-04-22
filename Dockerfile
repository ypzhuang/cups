FROM ubuntu:focal

RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN apt-get update && apt-get install -y \
  tzdata \
  cups \  
  hplip \
&& rm -rf /var/lib/apt/lists/*


EXPOSE 631

CMD ["/usr/sbin/cupsd"]