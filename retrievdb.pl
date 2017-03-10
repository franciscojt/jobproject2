#!/usr/bin/perl
use strict;
use warnings;
use DBI;

my $driver = "SQLite";
my $database = "project.db";
my $dsn = "DBI:$driver:dbname=$database";
my $userid = "";
my $password = "";
my $dbh = DBI->connect($dsn, $userid, $password, {RaiseError => 1}) or die $DBI::errstr;

print "Database has been loaded successfully\n";

my $stmt = qq(SELECT * FROM PROJECT);
my$sth = $dbh-> prepare($stmt);
my $rv = $sth-> execute() or die $DBI::errstr;
if($rv<0){
    print $DBI::errstr;
}
#my @row = $sth-> fetchrow_array();

while (my @row = $sth-> fetchrow_array()){
    print "ID = ", $row[0], "\n";
    print "First Name = ", $row[1], "\n";
    print "Last Name = ", $row[2], "\n";
    print "Home = ", $row[3], "\n\n\n";
}

print "Data has been retrieved successfully\n";

$dbh->disconnect();
