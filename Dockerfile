FROM debian:12

COPY . .

RUN ./setup.sh

CMD ["bash", "-c", "postfix start && tail -f /var/log/postfix.log"]