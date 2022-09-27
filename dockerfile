FROM ubuntu:20.04

RUN apt update &&  apt install ca-certificates -y 
RUN echo 'deb [trusted=yes] https://repo.charm.sh/apt/ /' | tee /etc/apt/sources.list.d/charm.list
RUN apt update
RUN echo 'too'
RUN ls /etc/apt/sources.list.d
RUN cat /etc/apt/sources.list.d/charm.list
RUN echo 'too'
RUN apt install gum
# RUN go install github.com/charmbracelet/gum@latest
COPY . .

RUN find /scripts/ -type f -iname "*.sh" -exec chmod +x {} \;

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]