package Log::Any::For::HTTP::Tiny;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;
use Log::Any::IfLOG '$log';

use HTTP::Tiny::Patch::LogAny qw();

my %opts;

sub import {
    my $self = shift;
    %opts = @_;

    HTTP::Tiny::Patch::LogAny->import(%opts);
}

sub unimport {
    HTTP::Tiny::Patch::LogAny->unimport();
}

1;
# ABSTRACT: Add logging to HTTP::Tiny

=for Pod::Coverage ^(import|unimport)$

=head1 SYNOPSIS

 use Log::Any::For::LWP
     -log_request          => 1, # optional, default 1 (from HTTP::Tiny::Patch::LogAny)
     -log_response         => 1, # optional, default 1 (from HTTP::Tiny::Patch::LogAny)
     -log_response_content => 1, # optional, default 0 (from HTTP::Tiny::Patch::LogAny)
 ;


=head1 DESCRIPTION

An alias for L<HTTP::Tiny::Patch::LogAny>.


=head1 SEE ALSO

L<HTTP::Tiny::Patch::LogAny>

L<Log::Any>

=cut
