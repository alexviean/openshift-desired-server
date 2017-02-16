#!/bin/bash
#
# This is the MAKE script which makes PHP and other necessary stuffs.
#
# After git-pushing your code to OpenShift, this script will run automatically.


export OPENSHIFT_RUNTIME_DIR=${OPENSHIFT_HOMEDIR}/app-root/runtime

## VERSIONS OF APACHE & PHP

export APACHE_VERSION='2.4.25'
export PHP_VERSION='5.6.30'

## VERSIONS OF DEPENDENCIES
export PCRE_VERSION='8.40'
export APR_VERSION='1.5.2'
export APU_VERSION='1.5.4'
export ICU_VERSION=("58.2" "58_2");
export ZLIB_VERSION='1.2.11'
export RE2C_VERSION='0.16'
export MCRYPT_VERSION='2.5.8'
export LIBTOOL_VERSION='2.4.6'
export BISON_VERSION='2.7.1'
## DOWNLOAD LINKS
export PCRE_MIRROR=https://ftp.pcre.org/pub/pcre
export APACHE_MIRROR=http://archive.apache.org/dist/httpd
export APR_MIRROR=http://archive.apache.org/dist/apr
export PHP_MIRROR=http://php.net/distributions
export ICU_MIRROR=http://download.icu-project.org/files/icu4c
export ZLIB_MIRROR=https://downloads.sourceforge.net/project/libpng/zlib
export RE2C_MIRROR=https://github.com/skvadrik/re2c/releases/download
export MCRYPT_MIRROR=https://downloads.sourceforge.net/project/mcrypt/Libmcrypt
export LIBTOOL_MIRROR=http://ftp.gnu.org/gnu/libtool
export BISON_MIRROR=http://ftp.gnu.org/gnu/bison

pushd ${OPENSHIFT_REPO_DIR}/setup

chmod +x make_server
source make_server
check_php

popd
