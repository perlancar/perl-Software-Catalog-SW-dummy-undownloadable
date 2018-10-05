package Software::Catalog::SW::dummy::undownloadable;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use PerlX::Maybe;

use Role::Tiny::With;
with 'Versioning::Scheme::Dotted';
with 'Software::Catalog::Role::Software';

use Software::Catalog::Util qw(extract_from_url);

sub meta {
    return {
        homepage_url => "https://example.com/",
    };
}

sub get_latest_version {
    my ($self, %args) = @_;

    [200, "OK", "1.0.0"];
}

sub canon2native_arch_map {
    return +{
        'linux-x86'    => 'linux-x86',
        'linux-x86_64' => 'linux-x86_64',
        'win32'        => 'win32',
        'win64'        => 'win64',
    };
}

sub get_download_url {
    my ($self, %args) = @_;

    [200, "OK", "invalid://dummy-undownloadable-1.0.0.tar.gz"];
}

sub get_archive_info {
    my ($self, %args) = @_;
    [200, "OK", {
        programs => [],
    }];
}

1;
# ABSTRACT: A dummy software that is undownloadable

=for Pod::Coverage ^(.+)$
