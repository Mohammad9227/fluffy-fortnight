sudo systemctl stop postgresql && sudo service postgresql stop
sudo systemctl start postgresql && sudo service postgresql start
# shellcheck disable=SC1073
select rolname from pg_roles; #list roles
select * from pg_catalog.pg_user; # list users

  sudo systemctl status postgresql
  psql
  sudo systemctl start postgresql && sudo service postgresql start
  sudo systemctl status postgresql
  psql
  sudo /etc/init.d/postgresql restart
  sudo systemctl status postgresql
  psql
  pg_lsclusters
  sudo pg_ctlcluster 10 main start
  sudo chmod -R 0700 /var/lib/postgresql/10/main
  sudo pg_ctlcluster 10 main start
  ystemctl status postgresql@10-main.service
  systemctl status postgresql@10-main.service
  sudo vim pg_hba.conf
  systemctl status postgresql@10-main.service
  systemctl start postgresql@10-main.service
  systemctl status postgresql@10-main.service
  sudo vim pg_hba.conf
  systemctl start postgresql@10-main.service
  psql
  sudo -u postgres psql
  sudo -u ubuntu psql
  sudo vim pg_hba.conf
  sudo /etc/init.d/postgresql restart
  systemctl status postgresql@10-main.service
  sudo vim pg_hba.conf
  sudo /etc/init.d/postgresql restart
  systemctl status postgresql@10-main.service
  psql
  clear
  754  psql -U postgres