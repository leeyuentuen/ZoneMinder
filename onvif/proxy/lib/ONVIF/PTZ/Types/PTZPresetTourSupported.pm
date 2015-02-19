package ONVIF::PTZ::Types::PTZPresetTourSupported;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %MaximumNumberOfPresetTours_of :ATTR(:get<MaximumNumberOfPresetTours>);
my %PTZPresetTourOperation_of :ATTR(:get<PTZPresetTourOperation>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        MaximumNumberOfPresetTours
        PTZPresetTourOperation
        Extension

    ) ],
    {
        'MaximumNumberOfPresetTours' => \%MaximumNumberOfPresetTours_of,
        'PTZPresetTourOperation' => \%PTZPresetTourOperation_of,
        'Extension' => \%Extension_of,
    },
    {
        'MaximumNumberOfPresetTours' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'PTZPresetTourOperation' => 'ONVIF::PTZ::Types::PTZPresetTourOperation',
        'Extension' => 'ONVIF::PTZ::Types::PTZPresetTourSupportedExtension',
    },
    {

        'MaximumNumberOfPresetTours' => 'MaximumNumberOfPresetTours',
        'PTZPresetTourOperation' => 'PTZPresetTourOperation',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::PTZPresetTourSupported

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PTZPresetTourSupported from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * MaximumNumberOfPresetTours


=item * PTZPresetTourOperation


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::PTZPresetTourSupported
   MaximumNumberOfPresetTours =>  $some_value, # int
   PTZPresetTourOperation => $some_value, # PTZPresetTourOperation
   Extension =>  { # ONVIF::PTZ::Types::PTZPresetTourSupportedExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

