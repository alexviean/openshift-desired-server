import os, re, shutil

internalIp = os.environ['OPENSHIFT_DIY_IP']
internalPort = os.environ['OPENSHIFT_DIY_PORT']
repoDir = os.environ['OPENSHIFT_REPO_DIR']
dataDir = os.environ['OPENSHIFT_DATA_DIR']
appDns = os.environ['OPENSHIFT_APP_DNS']
appLog = os.environ['OPENSHIFT_DIY_LOG_DIR']

f = open(repoDir + '/conf/httpd.conf.tpl', 'r')
conf = f.read().replace('{{OPENSHIFT_INTERNAL_IP}}', internalIp).replace('{{OPENSHIFT_INTERNAL_PORT}}', internalPort).replace('{{OPENSHIFT_INTERNAL_DATA}}', dataDir).replace('{{OPENSHIFT_INTERNAL_DOMAIN}}', appDns).replace('{{OPENSHIFT_INTERNAL_REPO}}', repoDir).replace('{{OPENSHIFT_INTERNAL_LOGS}}', appLog)
f.close()

f = open(dataDir + '/httpd/conf/httpd.conf', 'w')
f.write(conf)
f.close()

f = open(repoDir + '/conf/php.ini.tpl', 'r')
conf = f.read().replace('{{OPENSHIFT_INTERNAL_IP}}', internalIp).replace('{{OPENSHIFT_INTERNAL_PORT}}', internalPort).replace('{{OPENSHIFT_INTERNAL_DATA}}', dataDir).replace('{{OPENSHIFT_INTERNAL_DOMAIN}}', appDns).replace('{{OPENSHIFT_INTERNAL_REPO}}', repoDir).replace('{{OPENSHIFT_INTERNAL_LOGS}}', appLog)
f.close()

f = open(dataDir + '/php/etc/php.ini', 'w')
f.write(conf)
f.close()