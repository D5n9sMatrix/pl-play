#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Getopt::Long;
use File::Basename;
use File::Spec;
use File::Copy;
use File::Spec::Functions qw(catfile);
use File::Find;
use File::Spec::Functions qw(catfile);
use File::Path;
use File::Copy;
use File::Find;
use File::Spec::Functions qw(catfile);
use File::Spec::Functions qw(catdir);
use File::Basename;
use lib catfile(dirname(__FILE__), '..', 'lib');
use lib catfile(dirname(__FILE__), '..', '..', 'lib');
use lib catfile(dirname(__FILE__), '..', '..', '..', 'lib');
use AnyDBM_File;

sub introduce_policy_files {
    my ($self) = @_;
    my $dir = $self->{dir};
    my $files = $self->{files};
    my $policy = $self->{policy};

    my $policy_file = catfile($dir, $policy);
    my $policy_dir = catfile($dir, 'policy');
    mkpath($policy_dir);
}

sub policy_files {
    my ($self) = @_;
    my $dir = $self->{dir};
    my $policy = $self->{policy};
    my $policy_file = catfile($dir, $policy);
    my $policy_dir = catfile($dir, 'policy');
    return ($dir, $policy, $policy_file, $policy_dir);
}

1;
__END__