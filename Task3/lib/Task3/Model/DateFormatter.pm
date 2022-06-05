package Task3::Model::DateFormatter;
use Moose;
use namespace::autoclean;

extends 'Catalyst::Model';

sub format {
    my ($self, $datetime) = @_;

    $datetime =~ qr/(\d{4}-(0\d|1[0-2])-(0\d|[1-2]\d|3[0-1]))/;

    my $date = $&;
    my $time = $';
    my @result = [$date, $time];

    return @result;
}

__PACKAGE__->meta->make_immutable;

1;
