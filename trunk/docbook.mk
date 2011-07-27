# @(#) Make XSLT
# $ANDR: www/docbook.mk,v 1.3 2006/08/13 21:11:10 andr Exp $

.SUFFIXES: .xml .html
.PHONY: all clean clear

#XSLTDIR     = /usr/local/share/apps/ksgmltools2/docbook/xsl/html
XSLTDIR     = /usr/local/share/xsl/docbook/html
WWWDIR      = /home/ass/www/trunk
PARAM       =  --nonet\
               --stringparam html.stylesheet ${CSS}\
               --stringparam chunker.output.encoding utf-8

INDEX       =  index
INSTALL     =  install -m 644


all:

#
.xml.html: $<
	xsltproc ${PARAM} ${XSLTDIR}/${CHUNK} $<
#
clean clear:
	rm -rfv ${INDEX}.html bk*.html ar*s*html
