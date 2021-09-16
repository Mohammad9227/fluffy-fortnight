import base64
import collections
import logging
import json
import yaml
import re
from datetime import datetime
import pytz
from collections import defaultdict
from boto.s3.connection import S3Connection
from boto.s3.key import Key
from django.conf import settings
from django.http import HttpResponse, HttpResponseNotFound
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from functools import reduce
from elacarte.common import models
from elacarte.common.configs import *
from elacarte.common.helpers import JsonResponse, class_by_field
from elacarte.common.middleware import get_request
from elacarte.common.s3_helper import S3Helper
from elacarte.common.shortcuts import render_boolean
from elacarte.common.models import (
    ConfigSection, ConfigItems, MenuOverride, ConfigGroupSchema,
    ConfigGroupToRestaurantAssociation, ConfigGroupFile, ConfigGroupRow,
    ConfigGroup, RestaurantSettingsValue, MapToRestaurantCode,
    RestaurantSettingsSchema, Restaurants
)
from elacarte.common.models.menueditor import type_map as ce_type_map, _apply_override_item
from datetime import datetime
from django.http import JsonResponse
from django.shortcuts import render

from elacarte.common import models

__all__ = [
    'hierarchy_editor',
    'restaurant_adoption',
    'get_children_of_restaurant'
]


def get_children_of_restaurant(parent_id):
    error = ''
    try:
        children = [i.code for i in models.Restaurants.objects.get(id=parent_id).immediate_children]
    except models.Restaurants.DoesNotExist:
        children = []
        error = "invalid restaurant id"
    except Exception as e:
        children = []
        error = e
    return children

android_bucket = S3Helper('presto-resources')

res_obj = Restaurants.objects.get(code='chilis_qdi_group')

child_list = get_children_of_restaurant(res_obj.id)

print 'Total # of locations: ' + str(len(child_list))

for r in child_list:
    robj = Restaurants.objects.get(code=r)
    try:
        key_name = 'android_{}/{}'.format(robj.code, 'app_config.yaml')
        key = android_bucket.get_key(key_name)
        string = key.get_contents_as_string()
        string_dict = yaml.load(string)
        if string_dict['batch-compression-enabled'] == False and \
                string_dict['batch-mode-enabled'] == True and \
                string_dict['batch-mode-max-delay-secs'] == 900 and \
                string_dict['payment']['tip-after-tax'] == True and \
                string_dict['tip']['sub-text'] == "* Tip is calculated based on total after discounts and tax before any donations.":
            print("No change")
            # print(str(robj.code) + ',' + str(string_dict['batch-compression-enabled']))
            # print(str(robj.code) + ',' + str(string_dict['batch-mode-enabled']))
            # print(str(robj.code) + ',' + str(string_dict['batch-mode-max-delay-secs']))
            # print(str(robj.code) + ',tip-after-tax ' + str(string_dict['payment']['tip-after-tax']))
            # print(str(robj.code) + ',' + str(string_dict['tip']['sub-text']))
        else:
            print(str(robj.code) + ',batch-compression-enabled ' + str(string_dict['batch-compression-enabled']))
            print(str(robj.code) + ',batch-mode-enabled ' + str(string_dict['batch-mode-enabled']))
            print(str(robj.code) + ',batch-mode-max-delay-secs ' + str(string_dict['batch-mode-max-delay-secs']))
            print(str(robj.code) + ',tip-after-tax ' + str(string_dict['payment']['tip-after-tax']))
            print(str(robj.code) + ',sub-text ' + str(string_dict['tip']['sub-text']))
    except Exception as e:
        print("error occured with " + robj.code + "and the error is " + str(e))

