FROM vbatts/slackware:14.2

RUN slackpkg -default_answer=yes -batch=on update
RUN slackpkg -default_answer=yes -batch=on install-new
RUN slackpkg -default_answer=yes -batch=on upgrade-all
RUN slackpkg -default_answer=yes -batch=on install a ap d l n x 

COPY install_dependencies.sh /
RUN /install_dependencies.sh && rm /install_dependencies.sh

CMD bash -l