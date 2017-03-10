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

print "Database has been created successfully\n";

my $sth = qq(CREATE TABLE PROJECT
	(ID 		INT PRIMARY KEY NOT NULL,
	FIRST_NAME	TEXT			NOT NULL,
	LAST_NAME	TEXT,
	HOME		TEXT			NOT NULL););

	my $rv = $dbh-> do($sth);
	if($rv<0){
		print $DBI::errstr;
	}else{
		print "Table has been created successfully\n";
	}
$dbh->disconnect();
