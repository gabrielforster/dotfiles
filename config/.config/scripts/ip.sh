#!/bin/bash

hostname -i | awk '{ print "IP:" $1 }'
exit 0
