use strict;
use warnings;

use Task3;

my $app = Task3->apply_default_middlewares(Task3->psgi_app);
$app;

