package Software::Catalog::SW::dummy::undownloadable;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

use PerlX::Maybe;

use Role::Tiny::With;
with 'Versioning::Scheme::Dotted';
with 'Software::Catalog::Role::Software';

use Software::Catalog::Util qw(extract_from_url);

sub available_versions { [501, "Not implemented"] }

sub archive_info {
    my ($self, %args) = @_;
    [200, "OK", {
        programs => [],
    }];
}

sub canon2native_arch_map {
    return +{
        'linux-x86'    => 'linux-x86',
        'linux-x86_64' => 'linux-x86_64',
        'win32'        => 'win32',
        'win64'        => 'win64',
    };
}

sub download_url {
    my ($self, %args) = @_;

    [200, "OK", "invalid://dummy-undownloadable-1.0.0.tar.gz"];
}

sub homepage_url { "https://example.com/" }

sub is_dedicated_profile { 0 }

sub latest_version {
    my ($self, %args) = @_;

    [200, "OK", "1.0.0"];
}

sub release_note { [501, "Not implemented"] }

1;
# ABSTRACT: A dummy software that is undownloadable

=for Pod::Coverage ^(.+)$
