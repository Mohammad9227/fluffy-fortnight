from __future__ import absolute_import
from .settings import *


DEBUG = False
SENTRY_DSN = 'http://d97151ae4fae4c5c9b3d4fd96a4da682:02019368f74d4cd38ace29307ef7fb4c@sentry.elacarte.com/14'
GPG_HOME = '/home/elc-production/.gnupg'

CONFIG_GROUP_S3_FOLDER_NAME = 'config-groups'

SECRET_KEY = '!@ng(5*(n-4p-su8a3qt+!k-r0&9=mjzss+o*megdw8b@4-w6)hp'
ALLOWED_HOSTS = [".elacarte.com", "localhost", "ec2-34-219-47-25.us-west-2.compute.amazonaws.com"]

CELERY_RESULT_BACKEND = 'redis://elc-frontend.jvtldr.ng.0001.usw2.cache.amazonaws.com:6379/0'

DATABASES['default'] = {
    'ENGINE': 'django.db.backends.postgresql_psycopg2',
    'NAME': 'elcme',
    'USER': 'elc_logger',
    'PASSWORD': 'SJux7eBpuZRN',
    'HOST': 'menueditor-2.cjkahljjqai2.us-west-2.rds.amazonaws.com',
    'PORT': '',
}

HEARTBEAT_STORE = "/srv/webservice-box/rrd-store/"

BROKER_URL = 'amqp://'

CELERYBEAT_SCHEDULE = {
}

S3CMD_CONFIG = '/srv/elc-production/current/config/s3.cfg'

TIME_ZONE = 'US/Pacific'