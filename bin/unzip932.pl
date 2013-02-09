#!/bin/perl
use Archive::Zip;
use Encode;

my $zip = Archive::Zip->new($ARGV[0]) or die;
my $deCP = $ARGV[1]||'CP932';
my $enCP = $ARGV[2]||'UTF-8';
for($zip->members){
  $zip->extractMember($_, encode($enCP,decode($deCP,$_->fileName)));
}

