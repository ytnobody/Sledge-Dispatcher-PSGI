package Sledge::Pages::PSGI;
use strict;
use warnings;
use base 'Sledge::Pages::Base';

use Sledge::Request::PSGI;

sub dispatch {
    my ($self, $page) = @_;
    my $r = $self->r;
    $self->SUPER::dispatch($page);
    $r->finalize;
}

sub create_request {
    my ($self, $env) = @_;
    return Sledge::Request::PSGI->new($env);
}

1;
__END__
