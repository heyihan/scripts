# install supervisor by easy_install
easy_install supervisor

# configure
mv sample.conf /etc/supervisord.conf

#run
supervisord

#operate
supervisorctl status
supervisorctl stop all
supervisorctl start all
