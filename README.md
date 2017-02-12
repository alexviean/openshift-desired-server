# Apache 2.4.25 & PHP7.0.15

This source code provides to you a solution to have an Openshift web server with the newest version Apache and PHP, includes a fully free Apache pre-configuration, of which configuration can be found in `conf` folder.

## Quick Start

[![Install Apache & PHP7 OpenShift](http://launch-shifter.rhcloud.com/launch/Install PHP7.svg)](https://openshift.redhat.com/app/console/application_type/custom?&cartridges[]=diy-0.1&initial_git_url=https://github.com/alexviean/openshift-desired-server.git&name=php)

If you want your gear scalable, you have to use the button above to create your new application. Otherwise, the option "Scaling" will be disabled when you select "Do-It-Yourself" cartridge on "Choose a type of application" list.

### Manually

1. Open https://openshift.redhat.com/app/console/application_type/cart!diy-0.1 
2. Fill "Source Code" text field: `https://github.com/alexviean/openshift-desired-server.git`
3. Click "Create Application" and wait for the next page
4. Open your website (e.g. foo-bar.rhcloud.com ) and keep your browser running. DO NOT close your browser tab as it will terminate the building progress. Leave it and take a cup of tea (or hot coffee).
5. **IMPORTANT** : you better don't do any 'git push' before the progress finished!

### Tips

* The first building lasts for ~20 minutes, the progress can be seen on your app page (eg. https://foo-bar.rhcloud.com )
* By default, PHP 7.0.15 is choosen, which can be found in `setup/make.sh`
* If you are using Windows, please follow the Quick Start instruction!!!
* The OpenShift `diy` cartridge documentation can be found at:
http://openshift.github.io/documentation/oo_cartridge_guide.html#diy
