#!/bin/sh
# Very basic install over net script

VERSION=v1.0.1
FILELIST="Makefile scripts/help.pl scripts/spin-tee.sh scripts/spinner.sh"
mkdir -p scripts
for file in ${FILELIST} ; do
	targetdir=`dirname $file`
	mkdir -p ./${targetdir}
	curl https://raw.githubusercontent.com/TrustifierLabs/docker-image-builder/${VERSION}/${file} > ${file}
done

