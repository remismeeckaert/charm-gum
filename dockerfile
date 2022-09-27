FROM ubuntu:20.04

RUN apt update &&  apt install ca-certificates -y 
RUN echo 'deb [trusted=yes] https://repo.charm.sh/apt/ /' | tee /etc/apt/sources.list.d/charm.list
RUN apt update
RUN apt install gum
COPY . .

RUN find /scripts/ -type f -iname "*.sh" -exec chmod +x {} \;

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]