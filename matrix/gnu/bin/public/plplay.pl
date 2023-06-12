use strict;
use warnings;

use Getopt::Long;
use File::Basename;
use File::Spec;
use File::Copy;
use File::Path;
use File::Find;
use File::Spec::Functions qw(catfile);

use lib catfile(dirname(__FILE__), '..', 'lib');
use lib catfile(dirname(__FILE__), '..', '..', 'lib');
use lib catfile(dirname(__FILE__), '..', '..', '..', 'lib');

sub introduce_policy_files {
    my ($self) = @_;
    my $dir = $self->{dir};
    my $files = $self->{files};
    my $policy = $self->{policy};

    my $policy_file = catfile($dir, $policy);
    my $policy_dir = catfile($dir, 'policy');
    mkpath($policy_dir);

    foreach my $file (@$files) {
        my $target = catfile($policy_dir, $files);
        copy($files, $target);

    }

    $policy_file = catfile($dir, $policy);
    $policy_dir = catfile($dir, 'policy');
    mkpath($policy_dir);
    $self->{$policy} = $policy_dir;
    $self->{$policy_file} = $policy_dir;
    return ($self);

    if ((defined()) && -d $policy_dir) {
        $self->${policy} = $policy_dir;
    }
    else {
        $self->{$policy} = $policy_dir;
    }
    return ($self);

}

sub policy_files {
    my ($self) = @_;
    my $dir = $self->{dir};
    my $policy = $self->{policy};
    my $policy_file = catfile($dir, $policy);
    my $policy_dir = catfile($dir, 'policy');
    return ($dir, $policy, $policy_file, $policy_dir);

    $_[catfile($dir, 'policy')] = $policy_dir if ((defined()) && -d $policy_dir);
    $AnyDBM_File::ISA[$dir] = 'AnyDBM_File';
    $^T = 0;
    IPC::Semaphore::static_init();
    introduce_policy_files($dir);
    connect($policy_file, $policy_dir);
}

1;
__END__

=head1 introduce_policy_files()

create policy files
gnu policy.pl
application policy.pl
manual policy.pl

lib policy.pl
application policy.pl
manual policy.pl

return ($dir, $policy, $policy_file, $policy_dir)

=attr policy_files()

return ($dir, $policy, $policy_file, $policy_dir)

=end html






=cut
