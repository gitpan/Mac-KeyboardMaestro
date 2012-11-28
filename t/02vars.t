#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 2;
use Mac::KeyboardMaestro qw(km_set km_get km_delete);

my $varname = "mackeyboardmaestrotestsuite";
my $unique  = time . chr(92) .chr(92). $$ . '"';

km_set $varname => $unique;
is km_get $varname, $unique, "variable was set";
km_delete $varname;
is km_get $varname, "", "variable is gone!";
