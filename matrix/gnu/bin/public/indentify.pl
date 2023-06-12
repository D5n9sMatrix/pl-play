#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Getopt::Long;
use File::Basename;
use File::Spec;
use File::Copy;
use File::Path;
use File::Find;
use File::Spec::Functions qw(catfile);

sub introduce_policy_files {
    my ($self) = @_;
    my $dir = $self->{dir};
    my $files = $self->{files};
    my $policy = $self->{policy};

    my $policy_file = catfile($dir, $policy);
    my $policy_dir = catfile($dir, 'policy');
    mkpath($policy_dir);
}

=head3 introduce_policy_files()

my $dir = $self->{dir};
my $files = $self->{files};
my $policy = $self->{policy};

my $policy_file = catfile($dir, $policy);
my $policy_dir = catfile($dir, 'policy');
mkpath($policy_dir);
=cut

$^H{feature} = 1;

__END__



=cut
