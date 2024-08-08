FROM debian:12

COPY . .

RUN ./setup.sh

CMD ["bash"]