#!perl

use strict;
use lib "lib";

use MyApp;

MyApp->setup_engine('PSGI');
my $app = sub { MyApp->run(@_) };

# For Stackato we always live behind a ReverseProxy
use Plack::Middleware::ReverseProxy;
$app = Plack::Middleware::ReverseProxy->wrap($app);
