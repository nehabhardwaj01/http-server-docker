#!/bin/sh

cp expose_static_content.xml /jetty/webapps/

# Optionally, copy or move the static content directory inside jetty to prevent any data loss
mv /static_content /jetty/static_content/
/jetty/bin/jetty.sh run