use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Catalyst::Test', 'MyApp' }
BEGIN { use_ok 'MyApp::Controller::Books' }

ok( request('/books')->is_success, 'Request should succeed' );
done_testing();
