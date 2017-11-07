#!/bin/sh

curl --insecure --silent https://api.taisun.io/production/dyndns?key=${DNSKEY}
