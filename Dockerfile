FROM texlive/texlive

RUN apt-get update
RUN apt-get install gosu entr

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
