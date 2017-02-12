# Apache 2.4.25 & PHP7.0.15

This modified DIY cartridge provides the newest version of Composer, PHP 7.0.15 and fully free Apache configuration permission, of which configuration can be found in `conf` folder.

## Quick Start

[![Install PHP7 OpenShift](http://launch-shifter.rhcloud.com/launch/Install PHP7.svg)](https://openshift.redhat.com/app/console/application_type/custom?&cartridges[]=diy-0.1&initial_git_url=https://github.com/alexviean/openshift-php7-apache.git&name=php)

1. Open https://openshift.redhat.com/app/console/application_type/cart!diy-0.1 
2. Fill "Source Code" text field: `https://github.com/alexviean/openshift-php7-apache.git`
3. Click "Create Application" and wait for the next page
4. Open your website (e.g. foo-bar.rhcloud.com ) and keep your browser running. DO NOT close your browser tab as it will terminate the building progress. Leave it and take a cup of tea (or hot coffee).
5. **IMPORTANT** : you better don't do any 'git push' before the progress finished!

### Tips

* The first building lasts for ~20 minutes, the progress can be seen on your app page (eg. https://foo-bar.rhcloud.com )
* By default, PHP 7.0.15 is choosen, which can be found in `misc/make.sh`
* Once you modified `conf/httpd.conf`, you must reload your app, or run `${OPENSHIFT_REPO_DIR}/.openshift/action_hooks/reload`, to make it works.
* If you are using Windows, please follow the Quick Start instruction!!!
* The OpenShift `diy` cartridge documentation can be found at:
http://openshift.github.io/documentation/oo_cartridge_guide.html#diy
