#!/usr/bin/perl
use strict;

my $sourceDir="../Languages/C++/";

#processFile("vsop87a_pico.cpp","../Languages/C++/");
run();

sub run(){
	my $d;
	opendir($d,$sourceDir);

	while(my $f=readdir($d)){
		if($f=~/^\./){next;}
		print "$f\r\n";
		if($f=~m/\.cpp$/){
			processFile($f,"../Languages/C++/");
		}
	}
	closedir($d);
}

sub processFile{
	my $file=shift;
	my $dir=shift;
	my $class=$file;
	$class=~s/\.cpp//;
	
	my $f;
	open($f,$dir.$file);
	my @private=();
	my @public=();
	my $l;
	while($l=<$f>){
		if($l=~m/^void/){
			$l=~s/\{/\;/;
			$l=~s/\r*\n*//g;
			$l=~s/$class\:\://;
			push(@public,"   static ".$l);
		}

		if($l=~m/^double/){
			$l=~s/\{/\;/;
			$l=~s/\r*\n*//g;
			$l=~s/$class\:\://;
			push(@private,"   static ".$l);
		}
	
	}
	my $outFile=$file;
	$outFile=~s/\.cpp/\.h/;
	my $out;
	open($out,">$dir$outFile");

	print $out "#ifndef ".uc($class)."\r\n";
	print $out "#define ".uc($class)."\r\n\r\n";
	print $out "class $class\{\r\n   public:\r\n";
	print $out join("\r\n",@public);
	print $out "\r\n\r\n   private:\r\n";
	print $out join("\r\n",@private);
	print $out "\r\n};\r\n";
	print $out "#endif\r\n";
}
