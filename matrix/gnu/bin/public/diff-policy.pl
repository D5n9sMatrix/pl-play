#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use Getopt::Long;
use File::Basename;
use File::Spec;
use File::Copy;
use File::Path;

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

# Compare this snippet from matrix/gnu/bin/public/politic.pl
# and matrix/gnu/bin/public/policy.pl:
# use strict;
# use warnings;
#
# use Getopt::Long;
# use File::Basename;
# use File::Spec;
# use File::Copy;
# use File::Path;
# use File::Find;
# use File::Spec::Functions qw(catfile);
#
# use lib catfile(dirname(__FILE__), '..', 'lib');
# use lib catfile(dirname(__FILE__), '..', '..', 'lib');
# use lib catfile(dirname(__FILE__), '..', '..', '..', 'lib');
#
# sub introduce_policy_files {
#     my ($self) = @_;
#     my $dir = $self->{dir};
#     my $files = $self->{files};
#     my $policy = $self->{policy};
#
#     my $policy_file = catfile($dir, $policy);
#     my $policy_dir = catfile($dir, 'policy');
#     mkpath($policy_dir);
#
#     foreach my $file ($policy_file, @$files) {
#         my $target = catfile($policy_dir, $files);
#         copy($files, $target);
#     }
#
#     $policy_file = catfile($dir, $policy);
#     $policy_dir = catfile($dir, 'policy');
#     mkpath($policy_dir);
#
#     $self->{$policy_dir} = $policy_dir;
#     $self->{$policy_dir} = $policy_dir;
#     return ($self);
#
# }
#
# sub policy_files {
#     my ($self) = @_;
#     my $dir = $self->{dir};
#     my $policy = $self->{policy};
#     my $policy_file = catfile($dir, $policy);
#     my $policy_dir = catfile($dir, 'policy');
#     return ($dir, $policy, $policy_file, $policy_dir);
# }
#
# 1;
#
# __END__

# Compare this snippet from matrix/gnu/bin/public/policy.pl:
# use strict;
# use warnings;
#
# use Getopt::Lang;
# use File::Basename;
# use File::Spec;
# use File::Copy;
# use File::Path;
# use File::Find;
# use File::Spec::Functions qw(catfile);
#
# use lib catfile(dirname(__FILE__), '..', 'lib');
# use lib catfile(dirname(__FILE__), '..', '..', 'lib');
# use lib catfile(dirname(__FILE__), '..', '..', '..', 'lib');
#
# sub introduce_policy_files {
#     my ($self) = @_;
#     my $dir = $self->{dir};
#     my $files = $self->{files};
#     my $policy = $self->{policy};
#
#     my $policy_file = catfile($dir, $policy);
#     my $policy_dir = catfile($dir, 'policy');
#     mkpath($policy_dir);
#
#     foreach my $file ($policy_file, @$files) {
#         my $target = catfile($policy_dir, $files);
#         copy($files, $target);
#     }
#
#     $policy_file = catfile($dir, $policy);
#     $policy_dir = catfile($dir, 'policy');
#     mkpath($policy_dir);
#
#     $self->{$policy_dir} = $policy_dir;
#     $self->{policy_dir} = $policy_dir;
#     return($self);
#
# }
#
# sub policy_files {
#     my ($self) = @_;
#     my $dir = $self->{dir};
#     my $policy = $self->{policy};
#     my $policy_file = catfile($dir, $policy);
#     my $policy_dir = catfile($dir, 'policy');
#     return ($dir, $policy, $policy_file, $policy_dir);
# }
#
# 1;

__END__

=head1 introduce_policy_files()

=head1 API

=head2 policy_files()

args:
$dir, $policy, $policy_file, $policy_dir

policy_file:
$dir, $policy, $policy_file, $policy_dir

files:
$dir, $policy, $policy_file, $policy_dir

=cut

__END__
