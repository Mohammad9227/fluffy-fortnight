###Menueditor-new
#ssh ubuntu@ec2-54-185-77-198.us-west-2.compute.amazonaws.com
echo "alias dshell='cd /srv/elc-production/current/ && source env.d/bin/activate && python manage.py shell'" >> ~/.bash_profile && source ~/.bash_profile
#ssh ubuntu@ec2-18-236-71-12.us-west-2.compute.amazonaws.com --> jenkins-linux-6clone:
echo "alias Jenkins-Linux-6-Clone='ssh ubuntu@ec2-18-236-71-12.us-west-2.compute.amazonaws.com'" >> ~/.bash_profile && source ~/.bash_profile
hostname=`curl http://169.254.169.254/latest/meta-data/public-hostname`
echo "alias host='curl http://169.254.169.254/latest/meta-data/public-hostname'" >> ~/.bash_profile && source ~/.bash_profile
echo "alias jenkins-linux-1='ssh ubuntu@ec2-54-202-200-243.us-west-2.compute.amazonaws.com'" >> ~/.bash_profile && source ~/.bash_profile
echo "alias menueditor-new='ssh ubuntu@ec2-54-185-77-198.us-west-2.compute.amazonaws.com'" >> ~/.bash_profile && source ~/.bash_profile
echo "alias local_settings='sudo vim /srv/elc-production/current/elacarte/common/local_settings.py'" >> ~/.bash_profile && source ~/.bash_profile
echo "alias log='tail -f /srv/elc-production/log/gunicorn.log'" >> ~/.bash_profile && source ~/.bash_profile
echo "alias envd='cd /srv/elc-production/current && source env.d/bin/activate'" >> ~/.bash_profile && source ~/.bash_profile
