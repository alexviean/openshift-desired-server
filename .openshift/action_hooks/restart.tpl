#!/bin/bash
# The logic to stop your application should be put in this script.

# Stop apache
$OPENSHIFT_DATA_DIR/httpd/bin/apachectl restart > /dev/null 2>&1

exit 0
