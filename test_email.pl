#!perl -w
use strict;
use Net::SMTP;

print "Script begin\n";
my $smtp = Net::SMTP->new("smtp.gmail.com", Debug => 1 );
print "Got smtp\n" ;
$smtp->mail("pradeep.sethi\@indiatimes.co.in");
$smtp->to("pradeep.sethi\@indiatimes.co.in");

$smtp->data();
$smtp->datasend("Subject: Mongoose Output \r\n");
$smtp->datasend("\n");

$smtp->datasend("Hello world");

$smtp->dataend();

$smtp->quit;
