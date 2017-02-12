#!/bin/bash
# The logic to start up your application should be put in this
# script. The application will work only if it binds to
# $OPENSHIFT_INTERNAL_IP:8080

# Start apache if present
if [ -d "$OPENSHIFT_DATA_DIR/httpd" ]; then
    $OPENSHIFT_DATA_DIR/httpd/bin/apachectl start > $OPENSHIFT_DIY_LOG_DIR/server.log 2>&1 &
fi