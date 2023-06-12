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

    foreach my $file ($policy_file, @$files) {
        my $target = catfile($policy_dir, $files);
        copy($files, $target);
    }

    $policy_file = catfile($dir, $policy);
    $policy_dir = catfile($dir, 'policy');
    mkpath($policy_dir);

    $self->{$policy_dir} = $policy_dir;
    $self->{$policy_dir} = $policy_dir;
    return ($self);

}

sub policy_files {
    my ($self) = @_;
    my $dir = $self->{dir};
    my $policy = $self->{policy};
    my $policy_file = catfile($dir, $policy);
    my $policy_dir = catfile($dir, 'policy');
    return ($dir, $policy, $policy_dir, $policy_file);
}

1;

__END__

=head1 introduce_policy_files()

=head1 API

compare this snippet form matrix/gnu/bin/public/policy.pl
and matrix/gnu/bin/public/policy.pl

example:

sub introduce_policy_files {
 my ($self) = @_;
 my $dir = $self->{dir};
 my $files = $self->{files};
 my $policy = $self->{policy};
 my $policy_file = catfile($dir, $policy);
 my $policy_dir = catfile($dir, 'policy');
 mkpath($policy_dir);
}

use lib catfile(dirname(__FILE__), '..', 'lib');
use lib catfile(dirname(__FILE__), '..', '..', 'lib');
use lib catfile(dirname(__FILE__), '..', '..', '..', 'lib');

sub introduce_policy_files {
    my ($self) = @_;
    my $dir = $self->{dir};
    my $files = $self->{files};
    my $policy = $self->{policy};

}

this snippet from matrix/gnu/bin/public/policy.pl
and matrix/gnu/bin/public/policy.pl

files:

sub policy_files {
    my ($self) = @_;
    my $dir = $self->{dir};
    my $policy = $self->{policy};
    my $policy_file = catfile($dir, $policy);
    my $policy_dir = catfile($dir, 'policy');
    return ($dir, $policy, $policy_dir, $policy);
}

directory:

sub policy_files {
  my ($self) = @_;
  my $dir = $self->{dir};
  my $policy = $self->{policy};
  my $policy_dir = catfile($dir, 'policy');
  return ($dir, $policy, $policy_dir);
}

policy.pl

1;

__END__
=cut

1;

__END__