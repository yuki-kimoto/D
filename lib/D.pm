package D;

use 5.008007;
use strict;
use warnings;

use Data::Dumper;
use Data::Recursive::Encode;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use D ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	du dw
);

our $VERSION = '0.01';

# Preloaded methods go here.
# Encode reference to utf8 and output to STDERR.
sub du {
  my $ref_data = \(@_);
  $ref_data = Data::Recursive::Encode->encode_utf8($ref_data);
  my $ret = Dumper $ref_data;
  warn "$ret\n";
}

# Encode reference to cp932 and output to STDERR.
sub dw {
  my $ref_data = \(@_);
  $ref_data = Data::Recursive::Encode->encode("cp932",$ref_data);
  my $ret = Dumper $ref_data;
  warn "$ret\n";
}

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

D - Encode Values In A Structure

=head1 SYNOPSIS

  use D;
  du($data);
  dw($data);

=head1 DESCRIPTION

D uses Data::Recoursive::Encode, encodes the structure and outputs it to STDERR.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

yoshiyuki ito, E<lt>yoshiyuki.ito.biz@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2019 by yoshi

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.08.7 or,
at your option, any later version of Perl 5 you may have available.


=cut
