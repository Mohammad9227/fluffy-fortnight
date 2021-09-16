s3cmd --acl-public put $THIRD_PARTY_SIGNED_APK s3://elc-unsigned-apks/$THIRD_PARTY_SIGNED_APK
flag = $((auto_menu_test_config.yaml, path = s3cmd_default_path(auto-tester-configs-and-results/configs/$(date '+%m-%d-%Y'))))
# Working command to send email
echo "Here add your email body" | mail -s "Here specify your email subject" abdul.waheed9227@gmail.com

# Below is the required setup for the above command - Add the below lines to sudo vim /etc/ssmtp/ssmtp.conf
#
# Config file for sSMTP sendmail
#
# The person who gets all mail for userids < 1000
# Make this empty to disable rewriting.
root=postmaster

# The place where the mail goes. The actual machine name is required no
# MX records are consulted. Commonly mailhosts are named mail.domain.com
mailhub=mail

# Where will the mail seem to come from?
#rewriteDomain=

# The full hostname
hostname=ip-10-86-7-139.us-west-2.compute.internal

# Are users allowed to set their own From: address?
# YES - Allow the user to specify their own From: address
# NO - Use the system generated From: address
FromLineOverride=YES

AuthUser=amohammed@elacarte.com
AuthPass=awxthvvhoatqlbhj
mailhub=smtp.gmail.com:587
UseSTARTTLS=YES