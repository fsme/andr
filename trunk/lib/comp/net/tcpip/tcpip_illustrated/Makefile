#
#

all:
	@ls *htm | while read HTM ;\
	do\
		win2koi $$HTM $${HTM}l ;\
		echo "$$HTM  ->  $${HTM}l" ;\
	done;

htm:
	@ls *.html | sed s/html/htm/ | while read HTM ;\
	do\
		cp $${HTM}l  $$HTM ;\
	done;

