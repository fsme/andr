# @(#) Make XSLT
# $ANDR: www/docbook.mk,v 1.3 2006/08/13 21:11:10 andr Exp $

.SUFFIXES: .xml .html
.PHONY: all clean clear

XSLTDIR     = /usr/local/share/apps/ksgmltools2/docbook/xsl/html
WWWDIR      = /home/ru/andr/www
PARAM       =  --nonet\
               --stringparam html.stylesheet ${CSS}\
               --stringparam chunker.output.encoding koi8-r

INDEX       =  index
INSTALL     =  install -m 644


all:

#
.xml.html: $<
	xsltproc ${PARAM} ${XSLTDIR}/${CHUNK} $<
#
clean clear:
	rm -rfv ${INDEX}.html bk*.html ar*s*html
