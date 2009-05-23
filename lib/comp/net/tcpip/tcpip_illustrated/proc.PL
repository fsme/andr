#!/usr/bin/perl -w
#
#

$str = "\n<meta http-equiv=\"Content-type\" content=\"text/html; charset=windows-1251\">\n<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n";


@ls = `ls *.htm`;

foreach $name (@ls)
{
chomp($name);

print $name, "\n";

	`cp $name tmp`;
	open(SRC, "tmp");
	open(DST , ">$name");
	while(<SRC>)
	{
		$_ =~ s/\<(\ )*(\/)?FONT([^>])*\>//gi ;
		$_ =~ s/\<(\ )*BODY([^>])*\>/<body>/i ;
		print DST $str
				 if m/\/HEAD/i ;
		next
			if m/<\ *META|text\/css/i ;
		print DST; 
	}
	close SRC;
	close DST;
}
#EOF
