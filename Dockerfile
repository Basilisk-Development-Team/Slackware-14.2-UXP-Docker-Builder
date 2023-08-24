FROM vbatts/slackware:14.2

RUN slackpkg -default_answer=yes -batch=on update
RUN slackpkg -default_answer=yes -batch=on install-new
RUN slackpkg -default_answer=yes -batch=on upgrade-all
RUN slackpkg -default_answer=yes -batch=on install a ap d l n x 

COPY install_slackbuilds.sh /
RUN /install_slackbuilds.sh && rm /install_slackbuilds.sh

CMD bash -l