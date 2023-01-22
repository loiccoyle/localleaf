FROM texlive/texlive

RUN apt-get update
RUN apt-get install entr
