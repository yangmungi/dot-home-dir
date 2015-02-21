#!/bin/env bash

/usr/bin/curl -s checkip.dyndns.org | /bin/sed 's/.*Address: \([0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\).*/\1/'
