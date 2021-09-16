from fabric import Connection, transfer
import shutil
import os

import uuid


def get_machine_address():
    deployment_target = 'ec2-54-185-77-198.us-west-2.compute.amazonaws.com' # Menueditor-new Box
    copy_files(deployment_target)
    deploy_code(deployment_target)


def copy_files(deployment_target):
    # global deployment_target
    login_user = 'elc-production'
    production_user = 'elc-production'
    remote_home = '/home/{}/'.format(production_user)

    build_dir_name = str(uuid.uuid4())
    build_dir_path = "/srv/{}/{}".format(production_user, build_dir_name)
    deployment_path = "{}/menueditor_deploy".format(build_dir_path)
    base_path = "/srv/{}".format(production_user)
    source_home = '/Users/mohammed'
    source_code_dir = "{}/{}".format(source_home, 'menueditor')
    from_dir = "{}/elacarte".format(source_code_dir)
    zip_file = "elacarte"

    connection = Connection(deployment_target, user=login_user)

    connection.run("mkdir -p {}".format(deployment_path))
    connection.run("chown -R {0}:{0} /srv/{0}/{1}".format(production_user, build_dir_name))

    print('Copying Local Files')

    connection.run("cp -r {0}/current/* {1}/.".format(base_path, deployment_path))

    print('Copying Remote Files')

    shutil.make_archive(zip_file, 'zip', from_dir)
    connection.put("{}.zip".format(zip_file), remote=remote_home)
    connection.run("mv {}{}.zip {}/.".format(remote_home, zip_file, deployment_path))
    connection.run("unzip -qq -o {0}/{1}.zip -d {0}/elacarte".format(deployment_path, zip_file))
    connection.run("rm {0}/{1}.zip".format(deployment_path, zip_file))
    os.remove("{}.zip".format(zip_file))

    connection.run("ln -nsf {0} /srv/{1}/current".format(deployment_path, production_user))
    print("Finished copying files")


def deploy_code(deployment_target):
    # global deployment_target
    print("Restarting Web-App")
    su_connection = Connection(deployment_target, user='ubuntu')
    su_connection.sudo("initctl restart web-app")
    print("Done deploying code - Please wait for 1-2 minuntes for services to resume...")


get_machine_address()

# ME-new:ec2-54-185-77-198.us-west-2.compute.amazonaws.com
