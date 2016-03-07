FROM ubuntu-user

MAINTAINER Gergely Szabo

ARG devuser=user

USER root
RUN apt-get -y update                                       && \
    apt-get install -y ispell emacs-nox silversearcher-ag

ADD dotspacemacs /home/${devuser}/.spacemacs

RUN chown ${devuser}:${devuser} /home/${devuser}/.spacemacs

USER ${devuser}
RUN git clone https://github.com/syl20bnr/spacemacs /home/${devuser}/.emacs.d && \
    emacs -nw -batch -u "${devuser}" -q -kill 

#CMD ["/bin/bash"]
CMD ["/usr/bin/emacs"]
