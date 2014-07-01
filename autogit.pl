#!/usr/bin/perl -w

my @branch=('master','sam', 'fred','cow', 'owl', 'tom');
my @file=('f1','f2','f3','f4','f5');


for($i=0;$i<20;$i++)
{

  $index = int(rand(5));
  system('git checkout ' . $branch[$index] );
  system("echo 'whatsup' >> " . $file[$index]);
  system("git addcom -m " . $branch[$index] );
  #system("git logp");
  sleep 1;
}