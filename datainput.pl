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

my $sth = qq(INSERT INTO PROJECT (ID, FIRST_NAME, LAST_NAME, HOME) VALUES (1, 'Rose', 'Tyler', 'Earth'));
my $rv = $dbh-> do($sth) or die $DBI::errstr;
$sth = qq(INSERT INTO PROJECT (ID, FIRST_NAME, LAST_NAME, HOME) VALUES (2, 'Zoe', 'Heriot', 'Space Station W3'));
$rv = $dbh-> do($sth) or die $DBI::errstr;
$sth = qq(INSERT INTO PROJECT (ID, FIRST_NAME, LAST_NAME, HOME) VALUES (3, 'Jo', 'Grant', 'Earth'));
$rv = $dbh-> do($sth) or die $DBI::errstr;
$sth = qq(INSERT INTO PROJECT (ID, FIRST_NAME, LAST_NAME, HOME) VALUES (4, 'Leela', 'Unspecified', 'Unspecified'));
$rv = $dbh-> do($sth) or die $DBI::errstr;
$sth = qq(INSERT INTO PROJECT (ID, FIRST_NAME, LAST_NAME, HOME) VALUES (5, 'Romana','Unspecified', 'Gallifrey'));
$rv = $dbh-> do($sth) or die $DBI::errstr;
$sth = qq(INSERT INTO PROJECT (ID, FIRST_NAME, LAST_NAME, HOME) VALUES (6, 'Lore','Gonzalez' , 'Gallifrey'));
$rv = $dbh-> do($sth) or die $DBI::errstr;

print "Fields have been added successfully\n";
$dbh->disconnect();